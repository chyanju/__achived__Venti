#lang rosette
(require "./zhash.rkt")
(define z (make-zhash))
(zhash-has-key? z "jjj")
(zhash-set! z "jjj" 1)
(zhash-ref z "jjj")

(define-symbolic i boolean?)
(if i (zhash-set! z "i" #t) (zhash-set! z "i" #f))
(define-symbolic j boolean?)
(if j (zhash-set! z "j" 100) (zhash-set! z "j" 200))

(define keys (list "apple" "banana" "cat"))
(define vals (list 9 8 7))
(define-symbolic idx integer?)
(zhash-set! z (list-ref keys idx) (list-ref vals idx))