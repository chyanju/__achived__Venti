#lang rosette
; (require rosette/solver/smt/z3)
; (require rosette/solver/smt/cvc4)
; (when (cvc4-available?)
; 	(current-solver (cvc4))
; 	(printf "# solver is set to cvc4.\n")
; )

(require json)
(require racket/cmdline)
(require
	; "./yul-simulator.rkt"
	"./yul-simulator-z.rkt"
)

; read configuration from commandline
(define arg-config null)
(define arg-verbose #f)
(define arg-faststop #f)
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
)

; initialize one simulator for every contract
(define simulators (make-hash))
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
		(send contract-simulator initialize)
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
		(send contract-simulator initialize)
	)
)


; load transactions and define symbolic variables
(define tasks (hash-ref arg-config 'Tasks))
(define observe-calls (hash-ref arg-config 'ObserveCalls))
(for ([p (in-range (length tasks))])
	(when arg-verbose (printf "\n# running task: ~a\n" p))

	; (define dynamic-range (for/list ([i (range 0 10)])
	; 	(bv i 256)
	; ))
	(define (dynamic-bv sz)
		(define-symbolic* arg-bv (bitvector sz)) ; creates a different constant when evaluated
		; (assert (< (bitvector->integer arg-bv) 2))
		; (assert (> (bitvector->integer arg-bv) 0))
		; (define arg-bv (bv 0 sz))
		arg-bv
	)
	(define (dynamic-bool)
		(define-symbolic* arg-bool boolean?) ; creates a different constant when evaluated
		arg-bool
	)
	(define (dynamic-int)
		(define-symbolic* arg-int integer?)
		arg-int
	)
	(define (make-transaction q-txn)
		(for/list ([t0 q-txn])
			(for/list ([j (in-range (length t0))])
				(if (>= j 2)
					; list of argument types
					(match (list-ref t0 j)
						["uint256" (dynamic-bv 256)]
						["uint" (dynamic-bv 256)]
						["address" (dynamic-bv 256)]
						; ["uint256" (list-ref dynamic-range (dynamic-int))]
						; ["uint" (list-ref dynamic-range (dynamic-int))]
						; ["address" (list-ref dynamic-range (dynamic-int))]

						["bool" (bool->bitvector (dynamic-bool) (bitvector 256))]
						[_
							(printf "# exception-exit: unsupported argument symbolic type, got: ~a\n" (list-ref t0 j))
							(exit 0)
						]
					)
					; tag and function name
					(list-ref t0 j)
				)
			)
		)
	)

	(define (not-equal? arg-0 arg-1) (not (equal? arg-0 arg-1)))

	(when arg-verbose (printf "# constructing transaction ...\n"))
	(define curr-transaction
		(make-transaction (list-ref tasks p))
	)
	(when arg-verbose (printf "  transaction is: ~a\n" curr-transaction))

	(when arg-verbose (printf "# resetting Rosette ...\n"))
	(clear-asserts!) ; reset Rosette states

	(when arg-verbose (printf "# resetting simulators ...\n"))
	(for ([q (hash-values simulators)])
		(send q initialize)
	)

	(when arg-verbose (printf "# running transaction ...\n"))
	; observed-list is ((list-A ...) (list-B ...) ...)
	(for ([q (hash-keys simulators)])
		(when arg-verbose (printf "  # in simulator ~a\n" q))
		(define sret (send (hash-ref simulators q) interpret-txn curr-transaction))
		; if only returning one element, wrap it into a list
		(if (list? sret)
			sret
			(list sret)
		)
	)

	(define flag-terminate #f)
	(define neq-indices (list ))

	(when arg-verbose (printf "# checking observe equivalence ...\n"))
	(for ([b (range (length observe-calls))])
		(define oc (list-ref observe-calls b))

		(define curr-observe-txn (make-transaction (list oc))) ; wrap the single call into a txn
		(define observed-list 
			(for/list ([q (hash-keys simulators)])
				(define sret (send (hash-ref simulators q) interpret-txn curr-observe-txn))
				(if (list? sret)
					sret
					(list sret)
				)
			)
		)

		; check: not (anything is not equal)
		(define len-list (map length observed-list))
		(if (not (apply = len-list))
			; observed lists have different lengths accross simulaators
			; which means they are not equivalent
			(if arg-verbose
				(printf "# result | (task: ~a, observe: ~a): #f\n (length mismatch)" p (list-ref oc 1))
				(printf "# result | (task: ~a, observe: ~a): #f\n" p (list-ref oc 1))
			)
			; same length, move on to check
			(begin
				; (output-smt #t)
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
				; (printf "preds: ~a\n" final-pred)
				; (printf "task ~a total assertions: ~a\n" p (length (asserts)))
				(define greg-model (solve (assert final-pred)))
				(define solved? (sat? greg-model))
				(define result-eq (not solved?))
				(when (! result-eq) 
					(set! flag-terminate #t)
					(set! neq-indices (append neq-indices (list b)))
				)
			)
		)
	)

	(define str-output
		(if (null? neq-indices)
			"T"
			(string-append "F " (string-join (map ~a neq-indices) " ") )
		)
	)
	(if arg-verbose
		(printf "# task ~a: ~a\n" p neq-indices)
		(printf "~a\n" str-output)
	)
	(when (&& arg-faststop (! (null? neq-indices))) (exit 0))
	

)

; testing zone
; (define a (hash-ref simulators "Symbolic1A"))
; (define b (hash-ref simulators "Symbolic1B"))