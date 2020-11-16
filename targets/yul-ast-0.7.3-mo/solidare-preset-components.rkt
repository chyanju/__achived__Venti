#lang racket
(provide spc)

(define spc (make-hash))

(define contract-CreditDAO (make-hash))
(hash-set! contract-CreditDAO "observe__0" (list "txn_function_call" "observe__0" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__1" (list "txn_function_call" "observe__1" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__2" (list "txn_function_call" "observe__2"))
(hash-set! contract-CreditDAO "observe__3" (list "txn_function_call" "observe__3" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__4" (list "txn_function_call" "observe__4" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__5" (list "txn_function_call" "observe__5" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__6" (list "txn_function_call" "observe__6" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__7" (list "txn_function_call" "observe__7" "scoped:uint256"))
(hash-set! contract-CreditDAO "observe__8" (list "txn_function_call" "observe__8" "scoped:uint256"))
(hash-set! contract-CreditDAO "constructor" (list "txn_function_call" "constructor"))
(hash-set! contract-CreditDAO "createNewElections" (list "txn_function_call" "createNewElections"))
(hash-set! contract-CreditDAO "sumbitForElection" (list "txn_function_call" "sumbitForElection"))
(hash-set! contract-CreditDAO "vote" (list "txn_function_call" "vote" "scoped:address"))
(hash-set! contract-CreditDAO "finishElections" (list "txn_function_call" "finishElections" "scoped:uint256"))
; add to spc
(hash-set! spc "CreditDAO" contract-CreditDAO)