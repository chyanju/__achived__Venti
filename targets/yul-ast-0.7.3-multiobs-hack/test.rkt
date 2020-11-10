#lang rosette

(require json)
(require
	; "./yul-simulator.rkt"
	"./yul-simulator-z.rkt"
	"./zhash.rkt"
)

; ========================= ;
; ==== CreditDAO tests ==== ;
; ========================= ;

; initialization for Simulator A
; (define simulator-a (new yul-simulator%))
; (send simulator-a load-program-from-file "./tests/CreditDAO.json")
; (send simulator-a initialize)
; (define register-a (get-field yul-register simulator-a))
; (define memory-a (get-field yul-memory simulator-a))
; (define storage-a (get-field yul-storage simulator-a))

; (define transaction-a0 (list
; 	(list
; 		"txn_function_call"
; 		"constructor"
; 	)
; 	(list
; 		"txn_function_call"
; 		"observe"
; 	)
; ))
; (define observe-a0 (send simulator-a interpret-txn transaction-a0))

; (define transaction-a1 (list
; 	(list
; 		"txn_function_call"
; 		"sumbitForElection"
; 	)
; ))
; (define observe-a1 (send simulator-a interpret-txn transaction-a1))

; (define-symbolic sym-a2 (bitvector 256))
; (define transaction-a2 (list
; 	(list
; 		"txn_function_call"
; 		"vote"
; 		sym-a2
; 	)
; ))
; (define observe-a2 (send simulator-a interpret-txn transaction-a2))

; (define-symbolic sym-a3 (bitvector 256))
; (define transaction-a3 (list
; 	(list
; 		"txn_function_call"
; 		"finishElections"
; 		sym-a3
; 	)
; ))
; (define observe-a3 (send simulator-a interpret-txn transaction-a3))


; ================= ;
; ==== B tests ==== ;
; ================= ;

; initialization for Simulator A
; (define simulator-a (new yul-simulator%))
; (send simulator-a load-program-from-file "./tests/B.json")
; (send simulator-a initialize)
; (define register-a (get-field yul-register simulator-a))
; (define memory-a (get-field yul-memory simulator-a))
; (define storage-a (get-field yul-storage simulator-a))

; (define-symbolic sym-a0-0 (bitvector 256))
; (define-symbolic sym-a0-1 (bitvector 256))
; (define transaction-a0 (list
; 	(list
; 		"txn_function_call"
; 		"foo"
; 		sym-a0-0
; 		sym-a0-1
; 	)
; ))
; (define observe-a0 (send simulator-a interpret-txn transaction-a0))

; ======================= ;
; ==== MulRets tests ==== ;
; ======================= ;

; initialization for Simulator A
; (define simulator-a (new yul-simulator%))
; (send simulator-a load-program-from-file "./tests/MulRetsA.json")
; (send simulator-a initialize)
; (define register-a (get-field yul-register simulator-a))
; (define memory-a (get-field yul-memory simulator-a))
; (define storage-a (get-field yul-storage simulator-a))

; (define transaction-a0 (list
; 	(list
; 		"txn_function_call"
; 		"observe"
; 	)
; ))
; (define observe-a0 (send simulator-a interpret-txn transaction-a0))

; (define-symbolic sym-a1-0 (bitvector 256))
; (define-symbolic sym-a1-1 (bitvector 256))
; (define transaction-a1 (list
; 	(list
; 		"txn_function_call"
; 		"modify"
; 		sym-a1-0
; 		sym-a1-1
; 	)
; 	(list
; 		"txn_function_call"
; 		"observe"
; 	)
; ))
; (define observe-a1 (send simulator-a interpret-txn transaction-a1))

; ============================== ;
; ==== LiftedRegister tests ==== ;
; ============================== ;

; initialization for Simulator A
; (define simulator-a (new yul-simulator%))
; (send simulator-a load-program-from-file "./tests/LiftedRegisterA.json")
; (send simulator-a initialize)
; (define register-a (get-field yul-register simulator-a))
; (define memory-a (get-field yul-memory simulator-a))
; (define storage-a (get-field yul-storage simulator-a))

; (define-symbolic sym-a0 (bitvector 256))
; (define transaction-a0 (list
; 	(list
; 		"txn_function_call"
; 		"modifyX"
; 		sym-a0
; 	)
; 	(list
; 		"txn_function_call"
; 		"observe"
; 	)
; ))
; (define observe-a0 (send simulator-a interpret-txn transaction-a0))

; ================= ;
; ==== B tests ==== ;
; ================= ;

; initialization for Simulator A
(define simulator-a (new yul-simulator%))
(send simulator-a load-program-from-file "./tests/Bk.json")
(send simulator-a initialize)
(define register-a (get-field yul-register simulator-a))
(define memory-a (get-field yul-memory simulator-a))
(define storage-a (get-field yul-storage simulator-a))

(define-symbolic sym-a0-0 (bitvector 256))
(define-symbolic sym-a0-1 (bitvector 256))
(define transaction-a0 (list
	; (list
	; 	"txn_function_call"
	; 	"constructor"
	; )
	(list
		"txn_function_call"
		"foo"
		sym-a0-0
		; sym-a0-1
	)
	; (list
	; 	"txn_function_call"
	; 	"observe"
	; )
))
(define observe-a0 (send simulator-a interpret-txn transaction-a0))

; (define-symbolic sym-a1-0 (bitvector 256))
; (define-symbolic sym-a1-1 (bitvector 256))
; (define-symbolic sym-a1-2 (bitvector 256))
; (define-symbolic sym-a1-3 (bitvector 256))
; (assert (< (bitvector->integer sym-a1-0) 10))
; (assert (< (bitvector->integer sym-a1-1) 10))
; (assert (< (bitvector->integer sym-a1-2) 10))
; (assert (< (bitvector->integer sym-a1-3) 10))
; (define transaction-a1 (list
; 	(list
; 		"txn_function_call"
; 		"constructor"
; 	)
; 	(list
; 		"txn_function_call"
; 		"set_f1"
; 		sym-a1-0
; 		sym-a1-1
; 		sym-a1-2
; 	)
; 	(list
; 		"txn_function_call"
; 		"get_f1"
; 		sym-a1-3
; 	)
; ))
; (define observe-a1 (send simulator-a interpret-txn transaction-a1))

; (define transaction-a2 (list
; 	(list
; 		"txn_function_call"
; 		"constructor"
; 	)
	; (list
	; 	"txn_function_call"
	; 	"observe"
	; )
; ))
; (define observe-a2 (send simulator-a interpret-txn transaction-a2))
