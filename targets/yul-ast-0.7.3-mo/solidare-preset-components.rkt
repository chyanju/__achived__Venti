#lang racket
(provide spc)

(define spc (make-hash))

(define contract-creditdao (make-hash))
(hash-set! contract-creditdao "observe__0" (list "txn_function_call" "observe__0" "scoped:uint256"))
(hash-set! contract-creditdao "observe__1" (list "txn_function_call" "observe__1" "scoped:uint256"))
(hash-set! contract-creditdao "observe__2" (list "txn_function_call" "observe__2"))
(hash-set! contract-creditdao "observe__3" (list "txn_function_call" "observe__3" "scoped:uint256"))
(hash-set! contract-creditdao "observe__4" (list "txn_function_call" "observe__4" "scoped:uint256"))
(hash-set! contract-creditdao "observe__5" (list "txn_function_call" "observe__5" "scoped:uint256"))
(hash-set! contract-creditdao "observe__6" (list "txn_function_call" "observe__6" "scoped:uint256"))
(hash-set! contract-creditdao "observe__7" (list "txn_function_call" "observe__7" "scoped:uint256"))
(hash-set! contract-creditdao "observe__8" (list "txn_function_call" "observe__8" "scoped:uint256"))
(hash-set! contract-creditdao "constructor" (list "txn_function_call" "constructor"))
(hash-set! contract-creditdao "createNewElections" (list "txn_function_call" "createNewElections"))
(hash-set! contract-creditdao "sumbitForElection" (list "txn_function_call" "sumbitForElection"))
(hash-set! contract-creditdao "vote" (list "txn_function_call" "vote" "random:address"))
(hash-set! contract-creditdao "finishElections" (list "txn_function_call" "finishElections" "random:uint256"))
; add to spc
(hash-set! spc "creditdao" contract-creditdao)