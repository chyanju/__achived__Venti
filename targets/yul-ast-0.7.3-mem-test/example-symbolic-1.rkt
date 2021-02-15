#lang rosette

(require json)
(require
	"./yul-simulator-z.rkt"
)

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file "./tests/issue10755s.json")
(send simulator-a initialize)
(define register-a (get-field yul-register simulator-a))
(define memory-a (get-field yul-memory simulator-a))
(define storage-a (get-field yul-storage simulator-a))

; define transactions
; (define-symbolic sym-v (bitvector 256))
(define transaction-a (list
	(list
		"txn_function_call"
		"fn_test"
	)
))

; ; interpret transactions on two simulators
(printf "# interpreting...\n")
(define result-a (send simulator-a interpret-txn transaction-a))


(define simulator-b (new yul-simulator%))
(send simulator-b load-program-from-file "./tests/issue10755s.json")
(send simulator-b initialize)
(send simulator-b set-mtrigger #t)
(define register-b (get-field yul-register simulator-b))
(define memory-b (get-field yul-memory simulator-b))
(define storage-b (get-field yul-storage simulator-b))

; define transactions
; (define-symbolic sym-v (bitvector 256))
(define transaction-b (list
	(list
		"txn_function_call"
		"fn_test"
	)
))

; ; interpret transactions on two simulators
(printf "# interpreting...\n")
(define result-b (send simulator-b interpret-txn transaction-b))

(printf "# done.\n")

(assert (equal? result-a result-b))
(define sol (optimize #:minimize (list temp-counter) #:guarantee (assert #t)))

(printf "sol is: ~a\n" sol)