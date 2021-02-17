#lang rosette
(provide (all-defined-out))

; this should return all "dangling" symbolic variables
(define (driver-setup simulators)
	; assume: simulators should share the same default bitvector
	(define default-bv (get-field yul-default-bitvector (car simulators)))
	; shared symbolic variables
	(define-symbolic meta-calldatasize default-bv)
	(define-symbolic meta-returndatasize default-bv)
	(assert (bvsgt meta-calldatasize (bv 0 default-bv)))
	(assert (bvsgt meta-returndatasize (bv 0 default-bv)))
	(define sym-calldatasize (bvmul meta-calldatasize (bv 32 default-bv))) ; multiple of 32
	(define sym-returndatasize (bvmul meta-returndatasize (bv 32 default-bv))) ; multiple of 32
	(define-symbolic sym-gas default-bv)
	; set up
	(for ([simulator-x simulators])
		(send simulator-x set-calldatasize sym-calldatasize)
		(send simulator-x set-returndatasize sym-returndatasize)
		(send simulator-x set-gas sym-gas)
	)
	(list meta-calldatasize meta-returndatasize sym-gas)
)