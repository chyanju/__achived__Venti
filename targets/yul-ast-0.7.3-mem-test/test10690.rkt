#lang rosette

(require json)
(require
	"./yul-simulator-z.rkt"
)

(define exp-program-a "./tests/issue10690.json")
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
(send simulator-a load-program-from-file exp-program-a)
(send simulator-a initialize)
(send simulator-a set-calldatasize sym-calldatasize)
(send simulator-a set-returndatasize sym-returndatasize)
(send simulator-a set-gas sym-gas)
(send simulator-a set-mprobe (/ 64 #x20)) ; memory pos to probe
; (send simulator-a set-mprobe (/ 128 #x20)) ; memory pos to probe
; (send simulator-a set-mprobe (/ 96 #x20)) ; memory pos to probe
(define register-a (get-field yul-register simulator-a))
(define memory-a (get-field yul-memory simulator-a))
(define storage-a (get-field yul-storage simulator-a))

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

(printf "# done.\n")
(define va (get-field yul-probe-assertions simulator-a))
(define sol (verify (assert (apply && va))))
(printf "sol is: ~a\n" sol)