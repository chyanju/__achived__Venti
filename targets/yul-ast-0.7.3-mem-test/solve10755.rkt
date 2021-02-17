#lang rosette

(require json)
(require
	"./yul-simulator-z.rkt"
	"./utils.rkt"
)

; target parsed yul program
(define exp-program "./tests/issue10755.json")

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file exp-program)
(send simulator-a initialize)
(send simulator-a set-mtrigger #f) ; disable mstore decision mode

; set up drivers
(define drivers (driver-setup (list simulator-a)))

; define transaction
(define transaction (list
	(list
		"txn_function_call"
		"fn_test"
	)
))

; interpret transaction
(printf "# interpreting-a...\n")
(define result-a (send simulator-a interpret-txn transaction))

(printf "# done.\n")
; verification target
(define va (get-field yul-zero-assertions simulator-a))
(define sol (verify (assert (apply && va))))
(printf "sol is: ~a\n" sol)