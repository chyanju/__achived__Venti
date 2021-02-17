#lang rosette

(require json)
(require
	"./yul-simulator-z.rkt"
)

(define exp-program "./tests/issue10690.json")
; shared symbolic variables
(define-symbolic meta-calldatasize (bitvector 256))
(define-symbolic meta-returndatasize (bitvector 256))
(assert (bvsgt meta-calldatasize (bv 0 256)))
(assert (bvsgt meta-returndatasize (bv 0 256)))
(define sym-calldatasize (bvmul meta-calldatasize (bv 32 256)))
(define sym-returndatasize (bvmul meta-returndatasize (bv 32 256)))
(define-symbolic sym-gas (bitvector 256))

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file exp-program)
(send simulator-a initialize)
(send simulator-a set-calldatasize sym-calldatasize)
(send simulator-a set-returndatasize sym-returndatasize)
(send simulator-a set-gas sym-gas)
(send simulator-a set-mtrigger #f)
(define register-a (get-field yul-register simulator-a))
(define memory-a (get-field yul-memory simulator-a))
(define storage-a (get-field yul-storage simulator-a))

; initialization for Simulator B
(define simulator-b (new yul-simulator%))
(send simulator-b load-program-from-file exp-program)
(send simulator-b initialize)
(send simulator-b set-calldatasize sym-calldatasize)
(send simulator-b set-returndatasize sym-returndatasize)
(send simulator-b set-gas sym-gas)
(send simulator-b set-mtrigger #t)
(define register-b (get-field yul-register simulator-b))
(define memory-b (get-field yul-memory simulator-b))
(define storage-b (get-field yul-storage simulator-b))

; define transaction
(define transaction (list
	(list
		"txn_function_call"
		"fn_test"
	)
))
; interpret transactions on two simulators
(printf "# interpreting-a...\n")
(define result-a (send simulator-a interpret-txn transaction))
; interpret transactions on two simulators
(printf "# interpreting-b...\n")
(define result-b (send simulator-b interpret-txn transaction))

(printf "# done.\n")
; (define sol (synthesize 
; 	#:forall (list meta-calldatasize meta-returndatasize)
; 	; #:guarantee (&& (assert (equal? result-a result-b)) (assert (equal? temp-counter 0)))
; 	#:guarantee (assert (equal? result-a result-b))
; ))
(define sol (optimize #:minimize (list temp-counter) #:guarantee (assert (equal? result-a result-b))))
; (define sol (optimize 
; 	#:minimize (list temp-counter) 
; 	#:guarantee (assert (forall (list meta-calldatasize meta-returndatasize) (equal? result-a result-b)))))
(printf "sol is: ~a\n" sol)
