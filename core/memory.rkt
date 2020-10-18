#lang racket

(provide (all-defined-out))

; ================ ;
; ==== memory ==== ;
; ================ ;
; a memory here has: 
;   - state register
;   - inst/instruction register
(define memory%
	(class object%
		(super-new)
		
		; note: these fields should be initialized when inherited
		(field 
			[state-register #f]
			[inst-register #f]
		)
		
	)
)