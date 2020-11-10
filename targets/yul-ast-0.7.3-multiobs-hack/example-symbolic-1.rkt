#lang rosette

(require json)
(require
	"./yul-simulator.rkt"
)

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file "./tests/B.json")
(send simulator-a initialize)
(define register-a (get-field yul-register simulator-a))
(define memory-a (get-field yul-memory simulator-a))
(define storage-a (get-field yul-storage simulator-a))

; ; define transactions
; (define-symbolic sym-v (bitvector 256))
; (define transaction-a (list
; 	; 1st call
; 	; (list 
; 	; 	"txn_function_call" ; tag
; 	; 	"setx" ; function name
; 	; 	; (bv 4 (bitvector 256))
; 	; 	sym-v
; 	; )
; 	(list
; 		"txn_function_call"
; 		"observe"
; 	)
; ))

; ; interpret transactions on two simulators
; (printf "# interpreting...\n")
; (send simulator-a interpret-txn transaction-a)

(printf "# done.\n")