#lang racket

(require 
	parser-tools/lex
	(prefix-in re- parser-tools/lex-sre)
	parser-tools/yacc
)

(provide (all-defined-out))

; ============================ ;
; ==== instruction struct ==== ;
; ============================ ;
; used to store the instruction generated/parsed by the parser
(struct inst (op args) #:mutable)

; ================ ;
; ==== parser ==== ;
; ================ ;
; this contains parser and lexer
(define parser%
	(class object%
		(super-new)
		
		; note: these fields should be initialized when inherited
		(field 
			[tgt-parser #f]
			[tgt-lexer #f]
		)

		(define (do-lex input)
			(lambda ()
				(let ([token (tgt-lexer input)])
					;;(pretty-display token)
					token
				)
			)
		)

		; parse the target input into instruction(s)
		(define (do-parse input)
			(tgt-parser (do-lex input))
		)

		(define/public (parse-string s)
			(let ((input (open-input-string s)))
				(do-parse input)
			)
		)
		
	)
)