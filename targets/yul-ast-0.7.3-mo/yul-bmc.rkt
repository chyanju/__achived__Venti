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
(define arg-cached-txn #f)

(define arg-nbits 24)
(define arg-memsize 10000)
(define arg-nruns 1)
(define arg-random-ub 3) ; upper bound of the random: varaible, default lower bound is 0
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
; ==== beforehand linear mapping ==== ;
; (define (mo-mia p n) 
; 	; p is slot (base addr), n is key (offset/index)
; 	; stretchy coefficients k=25, b=5
; 	; normal computation: addr = p*k + n*b
; 	; constraint is: addr < memsize
; 	; so the guard is: p < ( memsize - n*b ) / k
; 	; or: n < ( memsize - k*p ) / b
; 	(define bv-memsize (bv arg-memsize arg-nbits))
; 	(define bv-k (bv 13 arg-nbits))
; 	(define bv-b (bv 1 arg-nbits))
; 	; (define tmp-bound (bvudiv (bvsub bv-memsize (bvmul p bv-k)) bv-b))
; 	; (assert (bvult n tmp-bound))
; 	(define addr (bvadd (bvmul p bv-k) (bvmul n bv-b) ))
; 	addr
; )
; (define (mo-mia p n) 
; 	(define addr (bvmul (bvadd p n ) (bv 23 arg-nbits)))
; 	addr
; )
; ==== preset hash function ==== ;
; (define mo-mia-hash
; 	(for/list ([_ (range arg-memsize)])
; 		(for/list ([_ (range arg-memsize)])
; 			(bv (random arg-memsize) arg-nbits)
; 		)
; 	)
; )
; (define (mo-mia p n) 
; 	(define int-p (bitvector->integer p))
; 	(define int-n (bitvector->integer n))
; 	(list-ref (list-ref mo-mia-hash int-p) int-n)
; )
; ==== Cantor Pairing Function ==== ;
; (define (mo-mia p n)
; 	(define term0 (bvadd p n))
; 	(define term1 (bvadd term0 (bv 1 arg-nbits)))
; 	(define term2 (bvmul term0 term1))
; 	(define term3 (bvudiv term2 (bv 2 arg-nbits)))
; 	(define term4 (bvadd term3 n))
; 	term4
; )
; ==== lazy random hash ==== ;
; (define mo-reserved-nslots 100)
; (define mo-hash-seq (shuffle (range mo-reserved-nslots (- arg-memsize mo-reserved-nslots))))
; (define mo-lazy-hash (make-hash))
; (define (mo-mia p n)
; 	(define int-p (bitvector->integer p))
; 	(define int-n (bitvector->integer n))
; 	(define pair-key (cons int-p int-n))
; 	(when (! (hash-has-key? mo-lazy-hash pair-key))
; 		; no key, add it
; 		(begin
; 			(hash-set! mo-lazy-hash pair-key (car mo-hash-seq))
; 			(set! mo-hash-seq (cdr mo-hash-seq))
; 		)
; 	)
; 	; return the hashed number
; 	(bv (hash-ref mo-lazy-hash pair-key) arg-nbits)
; )
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
	; return the hashed number
	(bv (hash-ref mo-lazy-hash pair-key) arg-nbits)
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
(define final-result #t)
(define tasks (hash-ref arg-config 'Tasks))
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
	(define (random-bv sz)
		(define res (integer->bitvector (random arg-random-ub) (bitvector sz)))
		(list res)
		; (list (bv 1 sz))
	)
	(define (random-bool sz)
		(if (equal? 0 (random 2))
			(list (bool->bitvector #f (bitvector sz)))
			(list (bool->bitvector #t (bitvector sz)))
		)
	)
	(define (scoped-bv sz)
		(for/list ([p (range arg-random-ub)])
			(bv p sz)
		)
	)
	(define (scoped-bool sz)
		(for/list ([p (list #f #t)])
			(bool->bitvector p (bitvector sz))
		)
	)

	; ============================ ;
	; ======= for every run ====== ;
	; ============================ ;
	(for ([j (range arg-nruns)])
		(define (make-run one-txn #:vpref [vpref ""])
			(define tmp1 
				(for/list ([c0 one-txn])
					(define tmp0
						(for/list ([k (range (length c0))])
							(if (>= k 2)
								; pos 2 starts the function call arguments
								(match (string-append vpref (list-ref c0 k))
									["symbolic:uint256" (symbolic-bv arg-nbits)]
									["symbolic:uint" (symbolic-bv arg-nbits)]
									["symbolic:address" (symbolic-bv arg-nbits)]
									["symbolic:bool" (symbolic-bool arg-nbits)]

									["random:uint256" (random-bv arg-nbits)]
									["random:uint" (random-bv arg-nbits)]
									["random:address" (random-bv arg-nbits)]
									["random:bool" (random-bool arg-nbits)]

									["scoped:uint256" (scoped-bv arg-nbits)]
									["scoped:uint" (scoped-bv arg-nbits)]
									["scoped:address" (scoped-bv arg-nbits)]
									["scoped:bool" (scoped-bool arg-nbits)]

									[_
										(printf "# [exit] make-run: unsupported argument type, got: ~a.\n" (list-ref c0 k))
										(exit 0)
									]
								)
								; pos 0 and 1 are the tag and function name
								(list (list-ref c0 k)) ; wrap for cartesian product
							)
						)
					)
					(apply cartesian-product tmp0)
				)
			)
			(apply cartesian-product tmp1)
		)


		(define run-j (make-run (list-ref tasks i)))
		; =================================== ;
		; ====== for every transaction ====== ;
		; =================================== ;
		(define last-txn-rp null)
		(for ([k (range (length run-j))])
			(define txn-k (list-ref run-j k))
			(define txn-k-rp (cdr (reverse txn-k)))
			(when arg-verbose (printf "\n"))
			(when arg-verbose (printf "# checking task: ~a, run: ~a, txn: ~a\n" i j k))
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
			(when arg-verbose (printf "  # observed: ~a\n" observed-list))
			(when arg-verbose (printf "  # checking observe equivalence ...\n"))
			(define len-list (map length observed-list))
			(if (not (apply = len-list))
				; observed lists have different lengths accross simulaators
				; which means they are not equivalent
				(begin
					(if arg-verbose 
						(printf "  # result: #f (return shape mismatch)\n")
						(printf "# task: ~a, run: ~a, txn: ~a | #f (return shape mismatch)\n" i j k)
					)
					(set! final-result (&& final-result #f))
					; perform fast stop
					(when arg-faststop 
						(printf "# final result: ~a\n" final-result)
						(exit 0)
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
					(if arg-verbose 
						(printf "  # result: ~a\n" result-eq)
						(printf "# task: ~a, run: ~a, txn: ~a | ~a\n" i j k result-eq)
					)
					(set! final-result (&& final-result result-eq))
					; perform fast stop
					(when (&& arg-faststop (! result-eq))
						(printf "# final result: ~a\n" final-result)
						(exit 0)
					)
				)
			)
		)
	)
)
; after all tasks, print the final result if still alive
(printf "# final result: ~a\n" final-result)
