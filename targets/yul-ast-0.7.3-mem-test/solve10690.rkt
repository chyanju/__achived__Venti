#lang rosette

(require json)
(require
	"./yul-simulator-z.rkt"
	"./utils.rkt"
)

; target parsed yul program
(define exp-program "./tests/issue10690.json")

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file exp-program)
(send simulator-a initialize)
(send simulator-a set-mtrigger #f) ; disable mstore decision mode

; initialization for Simulator B
(define simulator-b (new yul-simulator%))
(send simulator-b load-program-from-file exp-program)
(send simulator-b initialize)
(send simulator-b set-mtrigger #t) ; enable mstore decision mode

; set up drivers
(define drivers (driver-setup (list simulator-a simulator-b)))

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
(printf "# interpreting-b...\n")
(define result-b (send simulator-b interpret-txn transaction))
(printf "# done.\n")

; optimization target
(define mcollection (get-field yul-mcollection simulator-b))
(define mcounter (apply + mcollection))

(printf "# in total there are ~a mstore decisions\n" (length mcollection))
(for ([bg (range (length mcollection))])
	(printf "# in ~a\n" bg)
	(define sol (synthesize 
		#:forall drivers
		#:guarantee 
			(assert (&& 
				(equal? result-a result-b) 
				(equal? mcounter bg)
				(apply && (asserts))
			))
	))
	(when (sat? sol)
		(printf "# sol is: ~a\n" sol)
		(exit 0)
	)
)
