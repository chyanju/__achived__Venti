#lang rosette
; (output-smt #t)
(require rosette/lib/synthax)
; (require rosette/solver/smt/z3)
; (require rosette/solver/smt/cvc4)
; (when (cvc4-available?)
; 	(current-solver (cvc4))
; 	(printf "# solver is set to cvc4.\n")
; )

(require json)
(require racket/cmdline)
(require
	"./solidare-preset-components.rkt"
	"./yul-simulator-mo.rkt"
)
(define (not-equal? arg-0 arg-1) (not (equal? arg-0 arg-1)))

; read configuration from commandline
(define arg-config null)
(define arg-verbose #f)
(define arg-faststop #f)

; if on, assume every txn share the same prefix and the last call is observe
; in this case, re-use the state of the simulator (no need to reset)
; and only keep the last call of every txn (except the first one)
(define arg-cached-txn #t)

(define arg-preset "...") ; key to solidare-preset-components.rkt, mapping to none by default
(define arg-nbits 256)
(define arg-memsize 10000)
(define arg-nruns 1)
(define arg-random-ub 1) ; upper bound of the random: varaible, default lower bound is 0
; (define arg-config (string->jsexpr (file->string "test-config.json")))
(command-line
	#:program "yul-bmc"
	#:once-any
	[("--config-str") p-str "configuration string for bounded model checking"
		(begin
			(set! arg-config (string->jsexpr p-str))
		)
	]
	[("--config") p-file "configuration file for bounded model checking"
		(begin
			(set! arg-config (string->jsexpr (file->string p-file)))
		)
	]
	#:once-each
	[("--verbose") "whether or not to show more info for debugging" 
		(begin
			(set! arg-verbose #t)
		)
	]
	[("--faststop") "whether or not to stop and return when the task is returning unsat"
		(begin
			(set! arg-faststop #t)
		)
	]
	[("--cached-txn") "assume every txn share the same prefix and the last call is observe"
		(begin
			(set! arg-cached-txn #t)
		)
	]
	[("--preset") p-preset "specify the solidare preset components to use, default: CreditDAO"
		(begin
			(set! arg-preset p-preset)
		)
	]
	[("--nbits") p-nbits "specify the number of bits of the simulator"
		(begin
			(set! arg-nbits (string->number p-nbits))
		)
	]
	[("--memsize") p-memsize "specify the memory size of the simulator"
		(begin
			(set! arg-memsize (string->number p-memsize))
		)
	]
	[("--nruns") p-nruns "specify how many runs a single transaction should run"
		(begin
			(set! arg-nruns (string->number p-nruns))
		)
	]
)
; display configuration
(when arg-verbose (printf "# using nbits: ~a\n" arg-nbits))
(when arg-verbose (printf "# using memsize: ~a\n" arg-memsize))
(when arg-verbose (printf "# using nruns: ~a\n" arg-nruns))

; initialize one simulator for every contract
(define simulators (make-hash))
; ==== mo: memory/storage indexing ==== ;
; ==== sparse lazy random hash ==== ;
(define mo-reserved-nslots 100)
(define mo-lazy-step 13) ; lazy step to prevent collision for direct sload(addr+?)
(define mo-hash-seq (shuffle 
	(range 
		mo-reserved-nslots 
		(- arg-memsize mo-reserved-nslots)
		mo-lazy-step
	)
))
; convert to bv first
(set! mo-hash-seq 
	(for/list ([jj mo-hash-seq])
		(bv jj arg-nbits)
	)
)
(define mo-lazy-hash (make-hash))
(define (mo-mia p n)
	(define int-p (bitvector->integer p))
	(define int-n (bitvector->integer n))
	(define pair-key (cons int-p int-n))
	(when (! (hash-has-key? mo-lazy-hash pair-key))
		; no key, add it
		(begin
			(hash-set! mo-lazy-hash pair-key (car mo-hash-seq))
			(set! mo-hash-seq (cdr mo-hash-seq))
		)
	)
	(hash-ref mo-lazy-hash pair-key)
)
(if (hash-has-key? arg-config 'ContractStrings)
	; yes there's contents, use that directly
	(for ([p (hash-ref arg-config 'ContractStrings)])
		(define contract-name (list-ref p 0))
		(define contract-string (list-ref p 1))
		(when arg-verbose (printf "# building simulator for ~a\n" contract-name))
		(define contract-simulator (new yul-simulator%))
		(hash-set! simulators contract-name contract-simulator) ; don't forget to put it into hash
		(define contract-json (string->jsexpr contract-string))
		(send contract-simulator load-program-from-json contract-json)
		(when arg-verbose (printf "# initializing simulator ...\n"))
		(send contract-simulator initialize arg-nbits arg-memsize mo-mia)
	)
	; no then use the paths instead
	(for ([p (hash-ref arg-config 'ContractPaths)])
		(define contract-name (list-ref p 0))
		(define contract-path (list-ref p 1))
		(when arg-verbose (printf "# building simulator for ~a from ~a\n" contract-name contract-path))
		(define contract-simulator (new yul-simulator%))
		(hash-set! simulators contract-name contract-simulator) ; don't forget to put it into hash
		(send contract-simulator load-program-from-file contract-path)
		(when arg-verbose (printf "# initializing simulator ...\n"))
		(send contract-simulator initialize arg-nbits arg-memsize mo-mia)
	)
)


; load transactions and define symbolic variables
; ======== important notes ======== ;
; - one checker call contains multiple tasks
; - one task contains multiple runs
; - one run contains multiple scoped transactions
;
; - all scoped transactions say equal -> the run says equal
; - all runs say equal -> the task says equal
; - all tasks say equal -> the checker says equal
; that is, any scoped transaction says neq, then the checker says neq
; otherise the checker says equal
(define tasks (hash-ref arg-config 'Tasks))
(define observe-calls (hash-ref arg-config 'ObserveCalls))
(define observe-names (for/list ([p observe-calls]) (list-ref p 1))) ; for later indexing
(define terminate-flag #f)

(for ([i (range (length tasks))])
	; transaction components should be wrapped in a list in preparation for cartesian products
	(define (symbolic-bv sz)
		(define-symbolic* arg-bv (bitvector sz)) ; creates a different constant when evaluated
		(list arg-bv)
	)
	(define (symbolic-bool sz)
		(define-symbolic* arg-bool boolean?) ; creates a different constant when evaluated
		(list (bool->bitvector arg-bool (bitvector sz)))
	)
	(define (symbolic-bv-list sz)
		; default: size 5 list
		(list
			(for/list ([_ (range 5)])
				(define-symbolic* arg-bv (bitvector sz))
				arg-bv
			)
		)
	)
	(define (random-bv sz)
		(define res (integer->bitvector (random arg-random-ub) (bitvector sz)))
		(list res)
	)
	(define (random-bool sz)
		(if (equal? 0 (random 2))
			(list (bool->bitvector #f (bitvector sz)))
			(list (bool->bitvector #t (bitvector sz)))
		)
	)
	(define (random-bv-list sz)
		(list
			(for/list ([_ (range 5)])
				(integer->bitvector (random arg-random-ub) (bitvector sz))
			)
		)
	)
	(define (scoped-bv sz)
		(for/list ([p (range arg-random-ub)])
			(bv p sz)
		)
	)
	(define (special-scoped-bv sz)
		(for/list ([p (range arg-random-ub)])
			(bv 1 sz)
		)
	)
	(define (scoped-bool sz)
		(for/list ([p (list #f #t)])
			(bool->bitvector p (bitvector sz))
		)
	)
	(define (scoped-bv-list sz)
		; note-important-fixme: enumerating all possible lists will be too many
		;                       so here we just sample multiple times
		(list
			(for/list ([_ (range 5)])
				(integer->bitvector (random arg-random-ub) (bitvector sz))
			)
			(for/list ([_ (range 5)])
				(integer->bitvector (random arg-random-ub) (bitvector sz))
			)
			(for/list ([_ (range 5)])
				(integer->bitvector (random arg-random-ub) (bitvector sz))
			)
		)
	)


	; ============================ ;
	; ======= for every run ====== ;
	; ============================ ;
	(define neq-obs-set (mutable-set ))
	(for ([j (range arg-nruns)])
		(define (make-run one-txn mul-obs #:vpref [vpref ""])
			; tmp1 is for txn
			(define tmp1 
				(for/list ([c0 one-txn])
					; note: exclusive to slim version, repalce the component with enhanced signature (if any)
					;       - if no preset is found, use scpoed: prefix by default
					(define modified-c0
						(if (hash-has-key? spc arg-preset)
							(if (hash-has-key? (hash-ref spc arg-preset) (list-ref c0 1))
								; preset found, set it
								(hash-ref (hash-ref spc arg-preset) (list-ref c0 1))
								; can't find preset, use default prefix
								(append
									(list 
										(car c0) 
										(cadr c0) 
									)
									(for/list ([ccc (cddr c0)])
										(string-append "scoped:" ccc)
									)
								)
							)
							; can't find preset
							(append
								(list 
									(car c0) 
									(cadr c0) 
								)
								(for/list ([ccc (cddr c0)])
									(string-append "scoped:" ccc)
								)
							)
						)
					)
					(define tmp0
						(for/list ([k (range (length modified-c0))])
							(if (>= k 2)
								; pos 2 starts the function call arguments
								(match (string-append vpref (list-ref modified-c0 k))

									; ==========
									["symbolic:uint256" (symbolic-bv arg-nbits)]
									["symbolic:uint128" (symbolic-bv arg-nbits)]
									["symbolic:uint64" (symbolic-bv arg-nbits)]
									["symbolic:uint32" (symbolic-bv arg-nbits)]
									["symbolic:uint16" (symbolic-bv arg-nbits)]
									["symbolic:uint8" (symbolic-bv arg-nbits)]
									["symbolic:uint" (symbolic-bv arg-nbits)]

									["symbolic:int256" (symbolic-bv arg-nbits)]
									["symbolic:int128" (symbolic-bv arg-nbits)]
									["symbolic:int64" (symbolic-bv arg-nbits)]
									["symbolic:int32" (symbolic-bv arg-nbits)]
									["symbolic:int16" (symbolic-bv arg-nbits)]
									["symbolic:int8" (symbolic-bv arg-nbits)]
									["symbolic:int" (symbolic-bv arg-nbits)]

									["symbolic:bytes256" (symbolic-bv arg-nbits)]
									["symbolic:bytes128" (symbolic-bv arg-nbits)]
									["symbolic:bytes64" (symbolic-bv arg-nbits)]
									["symbolic:bytes32" (symbolic-bv arg-nbits)]
									["symbolic:bytes16" (symbolic-bv arg-nbits)]
									["symbolic:bytes8" (symbolic-bv arg-nbits)]
									["symbolic:bytes" (symbolic-bv arg-nbits)]

									["symbolic:address" (symbolic-bv arg-nbits)]
									["symbolic:bool" (symbolic-bool arg-nbits)]
									; ["symbolic:address[]" (symbolic-bv-list arg-nbits)]

									; ==========
									["random:uint256" (random-bv arg-nbits)]
									["random:uint128" (random-bv arg-nbits)]
									["random:uint64" (random-bv arg-nbits)]
									["random:uint32" (random-bv arg-nbits)]
									["random:uint16" (random-bv arg-nbits)]
									["random:uint8" (random-bv arg-nbits)]
									["random:uint" (random-bv arg-nbits)]

									["random:int256" (random-bv arg-nbits)]
									["random:int128" (random-bv arg-nbits)]
									["random:int64" (random-bv arg-nbits)]
									["random:int32" (random-bv arg-nbits)]
									["random:int16" (random-bv arg-nbits)]
									["random:int8" (random-bv arg-nbits)]
									["random:int" (random-bv arg-nbits)]

									["random:bytes256" (random-bv arg-nbits)]
									["random:bytes128" (random-bv arg-nbits)]
									["random:bytes64" (random-bv arg-nbits)]
									["random:bytes32" (random-bv arg-nbits)]
									["random:bytes16" (random-bv arg-nbits)]
									["random:bytes8" (random-bv arg-nbits)]
									["random:bytes" (random-bv arg-nbits)]

									["random:address" (random-bv arg-nbits)]
									["random:bool" (random-bool arg-nbits)]
									; ["random:address[]" (random-bv-list arg-nbits)]

									; ==========
									["scoped:uint256" (scoped-bv arg-nbits)]
									["scoped:uint128" (scoped-bv arg-nbits)]
									["scoped:uint64" (scoped-bv arg-nbits)]
									["scoped:uint32" (scoped-bv arg-nbits)]
									["scoped:uint16" (scoped-bv arg-nbits)]
									["scoped:uint8" (scoped-bv arg-nbits)]
									["scoped:uint" (scoped-bv arg-nbits)]

									["scoped:int256" (scoped-bv arg-nbits)]
									["scoped:int128" (scoped-bv arg-nbits)]
									["scoped:int64" (scoped-bv arg-nbits)]
									["scoped:int32" (scoped-bv arg-nbits)]
									["scoped:int16" (scoped-bv arg-nbits)]
									["scoped:int8" (scoped-bv arg-nbits)]
									["scoped:int" (scoped-bv arg-nbits)]

									["scoped:bytes256" (scoped-bv arg-nbits)]
									["scoped:bytes128" (scoped-bv arg-nbits)]
									["scoped:bytes64" (scoped-bv arg-nbits)]
									["scoped:bytes32" (scoped-bv arg-nbits)]
									["scoped:bytes16" (scoped-bv arg-nbits)]
									["scoped:bytes8" (scoped-bv arg-nbits)]
									["scoped:bytes" (scoped-bv arg-nbits)]

									; ["scoped:address" (scoped-bv arg-nbits)]
									; hack, fix me
									["scoped:address" (special-scoped-bv arg-nbits)]
									["scoped:bool" (scoped-bool arg-nbits)]
									; ["scoped:address[]" (scoped-bv-list arg-nbits)]

									[_
										(printf "# [exit] make-run: unsupported argument type, got: ~a.\n" (list-ref modified-c0 k))
										(exit 0)
									]
								)
								; pos 0 and 1 are the tag and function name
								(list (list-ref modified-c0 k)) ; wrap for cartesian product
							)
						)
					)
					(apply cartesian-product tmp0)
				)
			)
			; tmp3 is for obs
			(define tmp3
				(for/list ([c1 mul-obs])
					; note: exclusive to slim version, repalce the component with enhanced signature (if any)
					;       - if no preset is found, use scpoed: prefix by default
					(define modified-c1
						(if (hash-has-key? spc arg-preset)
							(if (hash-has-key? (hash-ref spc arg-preset) (list-ref c1 1))
								; preset found, set it
								(hash-ref (hash-ref spc arg-preset) (list-ref c1 1))
								; can't find preset
								(append
									(list 
										(car c1) 
										(cadr c1) 
									)
									(for/list ([ccc (cddr c1)])
										(string-append "scoped:" ccc)
									)
								)
							)
							; can't find preset
							(append
								(list 
									(car c1) 
									(cadr c1) 
								)
								(for/list ([ccc (cddr c1)])
									(string-append "scoped:" ccc)
								)
							)
						)
					)
					(define tmp2
						(for/list ([k (range (length modified-c1))])
							(if (>= k 2)
								; pos 2 starts the function call arguments
								(match (string-append vpref (list-ref modified-c1 k))
									
									; ==========
									["symbolic:uint256" (symbolic-bv arg-nbits)]
									["symbolic:uint128" (symbolic-bv arg-nbits)]
									["symbolic:uint64" (symbolic-bv arg-nbits)]
									["symbolic:uint32" (symbolic-bv arg-nbits)]
									["symbolic:uint16" (symbolic-bv arg-nbits)]
									["symbolic:uint8" (symbolic-bv arg-nbits)]
									["symbolic:uint" (symbolic-bv arg-nbits)]

									["symbolic:int256" (symbolic-bv arg-nbits)]
									["symbolic:int128" (symbolic-bv arg-nbits)]
									["symbolic:int64" (symbolic-bv arg-nbits)]
									["symbolic:int32" (symbolic-bv arg-nbits)]
									["symbolic:int16" (symbolic-bv arg-nbits)]
									["symbolic:int8" (symbolic-bv arg-nbits)]
									["symbolic:int" (symbolic-bv arg-nbits)]

									["symbolic:bytes256" (symbolic-bv arg-nbits)]
									["symbolic:bytes128" (symbolic-bv arg-nbits)]
									["symbolic:bytes64" (symbolic-bv arg-nbits)]
									["symbolic:bytes32" (symbolic-bv arg-nbits)]
									["symbolic:bytes16" (symbolic-bv arg-nbits)]
									["symbolic:bytes8" (symbolic-bv arg-nbits)]
									["symbolic:bytes" (symbolic-bv arg-nbits)]

									["symbolic:address" (symbolic-bv arg-nbits)]
									["symbolic:bool" (symbolic-bool arg-nbits)]
									; ["symbolic:address[]" (symbolic-bv-list arg-nbits)]

									; ==========
									["random:uint256" (random-bv arg-nbits)]
									["random:uint128" (random-bv arg-nbits)]
									["random:uint64" (random-bv arg-nbits)]
									["random:uint32" (random-bv arg-nbits)]
									["random:uint16" (random-bv arg-nbits)]
									["random:uint8" (random-bv arg-nbits)]
									["random:uint" (random-bv arg-nbits)]

									["random:int256" (random-bv arg-nbits)]
									["random:int128" (random-bv arg-nbits)]
									["random:int64" (random-bv arg-nbits)]
									["random:int32" (random-bv arg-nbits)]
									["random:int16" (random-bv arg-nbits)]
									["random:int8" (random-bv arg-nbits)]
									["random:int" (random-bv arg-nbits)]

									["random:bytes256" (random-bv arg-nbits)]
									["random:bytes128" (random-bv arg-nbits)]
									["random:bytes64" (random-bv arg-nbits)]
									["random:bytes32" (random-bv arg-nbits)]
									["random:bytes16" (random-bv arg-nbits)]
									["random:bytes8" (random-bv arg-nbits)]
									["random:bytes" (random-bv arg-nbits)]

									["random:address" (random-bv arg-nbits)]
									["random:bool" (random-bool arg-nbits)]
									; ["random:address[]" (random-bv-list arg-nbits)]

									; ==========
									["scoped:uint256" (scoped-bv arg-nbits)]
									["scoped:uint128" (scoped-bv arg-nbits)]
									["scoped:uint64" (scoped-bv arg-nbits)]
									["scoped:uint32" (scoped-bv arg-nbits)]
									["scoped:uint16" (scoped-bv arg-nbits)]
									["scoped:uint8" (scoped-bv arg-nbits)]
									["scoped:uint" (scoped-bv arg-nbits)]

									["scoped:int256" (scoped-bv arg-nbits)]
									["scoped:int128" (scoped-bv arg-nbits)]
									["scoped:int64" (scoped-bv arg-nbits)]
									["scoped:int32" (scoped-bv arg-nbits)]
									["scoped:int16" (scoped-bv arg-nbits)]
									["scoped:int8" (scoped-bv arg-nbits)]
									["scoped:int" (scoped-bv arg-nbits)]

									["scoped:bytes256" (scoped-bv arg-nbits)]
									["scoped:bytes128" (scoped-bv arg-nbits)]
									["scoped:bytes64" (scoped-bv arg-nbits)]
									["scoped:bytes32" (scoped-bv arg-nbits)]
									["scoped:bytes16" (scoped-bv arg-nbits)]
									["scoped:bytes8" (scoped-bv arg-nbits)]
									["scoped:bytes" (scoped-bv arg-nbits)]

									; ["scoped:address" (scoped-bv arg-nbits)]
									; hack, fix me
									["scoped:address" (special-scoped-bv arg-nbits)]
									["scoped:bool" (scoped-bool arg-nbits)]
									; ["scoped:address[]" (scoped-bv-list arg-nbits)]

									[_
										(printf "# [exit] make-run: unsupported argument type, got: ~a.\n" (list-ref modified-c1 k))
										(exit 0)
									]
								)
								; pos 0 and 1 are the tag and function name
								(list (list-ref modified-c1 k)) ; wrap for cartesian product
							)
						)
					)
					(apply cartesian-product tmp2)
				)
			)
			; append all different instantiations of scoped (observe) calls
			(define tmp4 (apply append tmp3))
			; then compose full txn using the txn parts and observe parts using cartesian product
			(apply cartesian-product (append tmp1 (list tmp4)))
		)


		(define run-j (make-run (list-ref tasks i) observe-calls))
		; ; =================================== ;
		; ; ====== for every transaction ====== ;
		; ; =================================== ;
		(define last-txn-rp null)
		(for ([k (range (length run-j))])
			(define txn-k (list-ref run-j k))
			(define txn-k-rp (cdr (reverse txn-k)))
			(define txn-k-observe-name (list-ref (car (reverse txn-k)) 1))
			(when arg-verbose (printf "\n"))
			(when arg-verbose (printf "# checking task: ~a, run: ~a, txn: ~a (~a)\n" i j k txn-k-observe-name))
			(when arg-verbose (printf "  # txn is: ~a\n" txn-k))
			(if (&& arg-cached-txn (equal? last-txn-rp txn-k-rp))
				; should reuse the cached simulator state
				(begin
					; change the txn to only include the last observe function
					; (by assumption of arg-cached-txn)
					(set! txn-k (list (car (reverse txn-k)))) ; reset the txn
				)
				; start a fresh new run
				(begin
					(set! last-txn-rp (cdr (reverse txn-k)))
					(when arg-verbose (printf "  # resetting Rosette ...\n"))
					(clear-asserts!)
					(when arg-verbose (printf "  # resetting simulators ...\n"))
					(for ([q (hash-values simulators)])
						(send q initialize arg-nbits arg-memsize mo-mia)
					)
				)
			)
			
			(when arg-verbose (printf "  # running txn ...\n"))
			(define observed-list
				(for/list ([q (hash-keys simulators)])
					(when arg-verbose (printf "  # in simulator ~a\n" q))
					(define sret (send (hash-ref simulators q) interpret-txn txn-k))
					; if only returning one element, wrap it into a list
					(if (list? sret)
						sret
						(list sret)
					)
				)
			)
			(when arg-verbose (printf "  # checking observe equivalence ...\n"))
			(define len-list (map length observed-list))
			(if (not (apply = len-list))
				; observed lists have different lengths accross simulaators
				; which means they are not equivalent
				(begin
					; (if arg-verbose 
					; 	(printf "  # result: #f (return shape mismatch)\n")
					; 	(printf "# task: ~a, run: ~a, txn: ~a (~a) | #f (return shape mismatch)\n" i j k txn-k-observe-name)
					; )
					; record the neq observe call id
					(set-add! neq-obs-set (index-of observe-names txn-k-observe-name))
					; perform fast stop
					(when arg-faststop 
						(set! terminate-flag #t)
					)
				)
				; same length, move on to check
				(begin
					(define zlen (list-ref len-list 0))
					(define z-preds (for/list ([z (in-range zlen)])
						; compare every position 
						(define cmp-list (for/list ([ylist observed-list])
							(list-ref ylist z)
						))
						(define sub-preds (for/list ([y (combinations cmp-list 2)])
							(apply not-equal? y)
						))
						(define p-preds (apply || sub-preds))
						p-preds
					))
					(define final-pred (apply || z-preds))
					(define greg-model (solve (assert final-pred)))
					(define solved? (sat? greg-model))
					(define result-eq (not solved?))
					; (if arg-verbose 
					; 	(printf "  # result: ~a\n" result-eq)
					; 	(printf "# task: ~a, run: ~a, txn: ~a (~a)| ~a\n" i j k txn-k-observe-name result-eq)
					; )
					(when (! result-eq)
						; record the neq observe call id
						(set-add! neq-obs-set (index-of observe-names txn-k-observe-name))
						(when arg-faststop
							; perform fast stop
							(set! terminate-flag #t)
						)
					)
				)
			)
		) ; end of every txn
	) ; end of every run
	
	(define aggr-neq-obs (sort (set->list neq-obs-set) <))
	(define str-output
		(if (null? aggr-neq-obs)
			"T"
			(string-append "F " (string-join (map ~a aggr-neq-obs) " ") )
		)
	)
	(printf "~a\n" str-output)
	(when (&& arg-faststop terminate-flag)
		(exit 0)
	)
)
