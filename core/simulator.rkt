#lang racket

(provide (all-defined-out))

; =================== ;
; ==== simulator ==== ;
; =================== ;
(define simulator%
	(class object%
		(super-new)
		
		; note: these fields should be initialized when inherited
		(field 
			[sim-memory #f]
			[sim-parser #f]
		)

		; note: interpret methods should be defined in child class
		; the simulator class doesn't restrict the method name
	)
)