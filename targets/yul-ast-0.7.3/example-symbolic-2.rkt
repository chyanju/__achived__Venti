#lang rosette

(require json)
(require
	"./yul-simulator.rkt"
)

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file "./tests/Symbolic1A.json")
(send simulator-a initialize)
(define register-a (get-field yul-register simulator-a))
(define memory-a (get-field yul-memory simulator-a))
(define storage-a (get-field yul-storage simulator-a))

; initialization for Simulator B
(define simulator-b (new yul-simulator%))
(send simulator-b load-program-from-file "./tests/Symbolic1B.json")
(send simulator-b initialize)
(define register-b (get-field yul-register simulator-b))
(define memory-b (get-field yul-memory simulator-b))
(define storage-b (get-field yul-storage simulator-b))

; define transactions
(define-symbolic sym-v (bitvector 256))
(define transaction-a (list
	; 1st call
	; (list 
	; 	"txn_function_call" ; tag
	; 	"setx" ; function name
	; 	; (bv 4 (bitvector 256))
	; 	sym-v
	; )
	(list
		"txn_function_call"
		"observe"
	)
))
(define transaction-b (list
	; 1st call
	; (list 
	; 	"txn_function_call" ; tag
	; 	"setx" ; function name
	; 	; 9
	; 	sym-v
	; )
	(list
		"txn_function_call"
		"observe"
	)
))

; interpret transactions on two simulators
(printf "# interpreting...\n")
; (send simulator-a interpret-txn transaction-a)
; (send simulator-b interpret-txn transaction-b)
(define observe-a (send simulator-a interpret-txn transaction-a))
(define observe-b (send simulator-b interpret-txn transaction-b))

; observe variables on both simulators
; (printf "# observing...\n")
; (define observe-a (hash-ref memory-a "x"))
; (define observe-b (hash-ref memory-b "x"))

; check the equivalence regarding the observed variables
(define greg-model (solve (assert (not (equal? observe-a observe-b)))))
(define solved? (not (sat? greg-model)))
(printf "# result: ~a\n" solved?)