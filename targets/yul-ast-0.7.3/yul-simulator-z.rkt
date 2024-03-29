#lang rosette

(require json)
(require "./zhash.rkt")

; ==== note ==== ;
; This is a standalone simulator that does not inherit from core utils.
; The simulator is only for testing.

(provide (all-defined-out))

(define yul-simulator%
	; ==== yul-simulator normal procedures ==== ;
	; 1. load program into yul-program by calling load-? series
	; 2. initialize yul-memory, yul-storage, yul-register and yul-functions by calling initialize-? series, including:
	;    1) declaring global (contract-wise) states in yul-memory, yul-storage, yul-register, and
	;    2) defining functions/procedures and indexing them into yul-functions
	; 3. execute transactions by calling interpret-? series
	(class object%
		(super-new)
		(field 
			; register stores global (contract-wise) states
			; note: yul-memory and yul-storage are globally visible to any function (typically)
			; fixme: need to use lifted hash table
			[yul-memory null]
			[yul-storage null]

			; note: yul-register is used to store variables generated by let instructions
			[yul-register null]

			; program stores the whole program/contract in s-expression/json
			; note: assume the program won't have type errors
			[yul-program null]

			; yul-functions stores the defined functions/procedures
			; yul-functions complies to the scoping rules in: https://solidity.readthedocs.io/en/v0.7.2/yul.html#scoping-rules
			; fixme: there are still some confusions regarding some details of the scoping rules
			;        [current scheme] modify/new: only 1st scope (limited to your own scope; you can't operate other scopes unless call special function like sstore/mstore)
			;        [current scheme] read: read scope from near to far e.g. query 1st scope and then 2nd if no var is found in 1st
			; note: scoping rules apply to yul-register, not yul-memory or yul-storage (they are globally visible)
			; note: plain access (by writing the variable name) will trigger yul-register, and
			;       if you want to access yul-memory and yul-storage, you need mload and sload
			[yul-functions null]
			[yul-function-args null] ; this stores the argument names of a ***user-defined*** function, which should be initialized along with the definition

			; list of keys of yul-functions that belong to builtin functions
			; note: should be generated after all definitions of all builtin functions
			;       see definitions in Yul built-in functions zone
			[yul-builtin-functions null]

			; note: use 256-bit as the default bitvector
			; used to convert literals into internal representations
			[yul-default-bitvector (bitvector 256)]
		)

		; builtin control function
		(define (println-and-exit msg)
			(printf "~a\n" msg)
			(exit 0)
		)

		(define/public (load-program-from-file arg-file)
			(define raw-str (file->string arg-file))
			(set! yul-program (string->jsexpr raw-str))
		)

		(define/public (load-program-from-json arg-json)
			(set! yul-program arg-json)
		)

		; ============================= ;
		; ==== initialize-? series ==== ;
		; ============================= ;
		(define/public (initialize)
			(define (dynamic-internal-bv)
				(define-symbolic* arg-internal-bv yul-default-bitvector) ; creates a different constant when evaluated
				arg-internal-bv
			)

			(set! yul-memory (make-vector 2000 (bv 0 yul-default-bitvector)))
			(set! yul-storage (make-vector 2000 (bv 0 yul-default-bitvector)))
			(set! yul-register (make-zhash))
			(set! yul-functions (make-hash))
			(set! yul-function-args (make-hash))
			(set! yul-builtin-functions null)
			(initialize-builtin-functions)

			(initialize-node yul-program)
		)
		; note: this may call interpret-? series in global scope (according to Yul grammar)
		(define (initialize-node arg-node)
			(match arg-node
				[(list "start" m-object)
					(initialize-node m-object)
				]
				; yul_object: "object" yul_string_literal "{" yul_code "}"
				[(list "yul_object" m-string-literal m-code)
					; m-string-literal doesn't need initialization
					(initialize-node m-code)
				]
				[(list "yul_code" m-block)
					(initialize-node m-block)
				]
				[(list "yul_function_definition" m-identifier ms-function-xxx-list ... m-block)
					(define r-identifier (list-ref m-identifier 1))
					(if (hash-has-key? yul-functions r-identifier)
						; fixme: normal code and deployed code can define the same function
						; (println-and-exit (format "# exception-exit: function is defined twice, got: ~a." r-identifier))
						null
						; put function into yul-functions
						(begin
							(hash-set! yul-functions r-identifier arg-node)
							; parse the argument names and put them into yul-function-args
							(if (equal? 0 (length ms-function-xxx-list))
								; length=0, empty argument list
								(hash-set! yul-function-args r-identifier (list ))
								; length>0, if there's argument list, it should be at 0; get tag
								(begin
									(define p-list (list-ref ms-function-xxx-list 0))
									(define p-tag (list-ref p-list 0))
									(if (equal? "yul_function_arg_list" p-tag)
										; it's argument list
										; note: it can be typed
										; note: need to extract one more time to get yul_typed_identifier_list
										(hash-set! yul-function-args r-identifier (get-typed-id-pairs (list-tail (list-ref p-list 1) 1) ) )
										; it's not argument list, which means it's empty argument list
										(hash-set! yul-function-args r-identifier (list ))
									)
								)
							)
						)
					)
				]

				[(list-rest "yul_block" ms-statement)
					(for ([m-statement ms-statement])
						(initialize-node m-statement)
					)
				]

				[(list "yul_statement" m)
					(match m
						[(list "yul_function_definition" _ ...)
							(initialize-node m)
						]
						; if you reach here, it means the statement is in global scope
						; then you need to execute it right now
						[_
							; (printf "# [debug] interpreting ~a\n" m)
							; todo: implement this
							(interpret-node (list yul-register) m)
						]
					)
				]
				
				; others: not implemented or error
				[_
					(println-and-exit (format "# exception-exit: structure is not initializable, got: ~a." (list-ref arg-node 0)))
				]
			)
		)


		; ============================ ;
		; ==== interpret-? series ==== ;
		; ============================ ;

		; this will help redirect the function name
		(define (auto-pilot arg-function-name)
			(define pilot-fun-prefix (format "fun_~a_" arg-function-name))
			(define pilot-constructor-prefix (format "~a_" arg-function-name))
			(define pilot-return-name arg-function-name)
			(for ([p (hash-keys yul-functions)])
				(when (string-prefix? p pilot-fun-prefix)
					(set! pilot-return-name p)
				)
				(when (string-prefix? p pilot-constructor-prefix)
					(set! pilot-return-name p)
				)
			)
			pilot-return-name
		)

		; interpret transaction
		; a transaction is a list of function calls (with arguments)
		; note: arguments should all be bitvectors already
		(define/public (interpret-txn arg-txn)
			; important: this simulates `mstore(64, memoryguard(128))`, which prevents using certain
			;            memory zone for storing contents (since they are set as "swap" zone)
			(overwrite-var null (bv 64 yul-default-bitvector) (bv 128 yul-default-bitvector) #:where "m")
			; important: use for/last to return the value of last eval
			(for/last ([p arg-txn])
				(interpret-node (list yul-register) p)
			)
		)

		; fixme: need to assert the type of every structure, i.e., ("start" ("object" ...))
		; note: the keyword argument block-create-scope is special for yul_block only
		;       in the for_loop case, some blocks are sharing the same scope according to the scoping rules
		;       where you have to set the block-create-scope to #f
		(define (interpret-node args-register arg-node #:block-create-scope [block-create-scope #t])
			; (printf "# [debug] node: ~a, ~a\n" (list-ref arg-node 0) (list-ref arg-node 1))
			(match arg-node
				[(list "yul_if" m-expression m-block)
					(define r-expression (interpret-node args-register m-expression))
					; (printf "# [debug] yul_if, condition evals to: ~a\n" r-expression)
					(when (bitvector->bool r-expression)
						; (printf "# [debug] enter yul_if body\n")
						(interpret-node args-register m-block)
					)
				]
				[(list-rest "yul_switch" m-expression ms)
					(define r-expression (interpret-node args-register m-expression))
					(define r-stay #t)
					(for ([m ms])
						(when r-stay
							(define p-tag (list-ref m 0))
							(match p-tag
								["yul_case"
									(define m-literal (list-ref m 1))
									(define r-literal (interpret-node args-register m-literal))
									(when (equal? r-expression r-literal)
										(set! r-stay #f)
										(define p-block (list-ref m 2))
										(define p-register (make-zhash)) ; introduce new scope
										; chain the scope at the beginning
										(interpret-node (cons p-register args-register) p-block)
									)
								]
								["yul_default"
									(set! r-stay #f)
									(define p-block (list-ref m 1))
									(define p-register (make-zhash)) ; introduce new scope
									; chain the scope at the beginning
									(interpret-node (cons p-register args-register) p-block)
								]
								[_
									(println-and-exit (format "# exception-exit: invalid tag in yul_switch, expected {yul_case, yul_default}, got: ~a." p-tag))
								]
							)
						)
					)
				]
				; note (now deprecated): for introduces one outer scope and two inner scopes, see https://solidity.readthedocs.io/en/v0.7.2/yul.html#scoping-rules
				; fixme: for the present, for loop is bounded once
				; fixme: if you want to extend to unbounded mode, you'll need to take care of the break/leave(/continue) inside block
				; m-block-0 is the init block
				; m-block-1 is the post block
				; m-block-2 is the body block
				[(list "yul_for_loop" m-block-0 m-expression m-block-1 m-block-2)
					; (printf "# [debug] for loop register is ~a\n" args-register)
					(interpret-node args-register m-block-0 #:block-create-scope #f)
					(define r-expression (interpret-node args-register m-expression))
					; (printf "# [debug] for loop register-after is ~a\n" args-register)
					(when (bitvector->bool r-expression)
						(interpret-node args-register m-block-2 #:block-create-scope #f)
						(interpret-node args-register m-block-1 #:block-create-scope #f)
					)
				]
				[(list "yul_true_literal")
					; #t
					(bool->bitvector #t yul-default-bitvector)
				]
				[(list "yul_false_literal")
					; #f
					(bool->bitvector #t yul-default-bitvector)
				]
				; note: here you should call the function directly; it's function interpretation now
				; note: this is called by yul_function_call, not yul_statement or other
				[(list "yul_function_definition" m-identifier ms-function-xxx-list ... m-block)
					; (printf "# [debug] yul_function_definition/before: id is ~a, storage is ~a\n" m-identifier yul-storage)
					; search for the return list
					(define p-ret-list null)
					(for ([p-list ms-function-xxx-list])
						(define p-tag (list-ref p-list 0))
						(when (equal? "yul_function_ret_list" p-tag)
							; note: need to extract one more time to get yul_typed_identifier_list
							; fixme: what if there are two ret lists? can this happen?
							(set! p-ret-list (get-typed-id-pairs (list-tail (list-ref p-list 1) 1)))
						)
					)
					; (printf "# [debug] p-ret-list is ~a\n" p-ret-list)
					; note: define necessary return variable as 0 in the scope
					(for ([p p-ret-list])
						(make-var args-register (list-ref p 0) (bv 0 yul-default-bitvector) #:where "r")
					)
					; (printf "# [debug] interpret yul_function_definition: id is ~a, args-register is ~a\n" m-identifier args-register)
					; (printf "# [debug] interpret yul_function_definition: id is ~a\n" m-identifier)
					; then interpret
					(interpret-node args-register m-block)
					(if (null? p-ret-list)
						; no ret list is found, return null
						null
						; there's one ret list, align and return
						(if (equal? 1 (length p-ret-list))
							; only return 1 elem, no need for list
							(read-var args-register (list-ref (list-ref p-ret-list 0) 0) #:where "r")
							; return more than 1 elems, pack in a list
							(for/list ([p p-ret-list])
								(read-var args-register (list-ref p 0) #:where "r")
							)
						)
					)
				]
				[(list-rest "yul_variable_declaration" m-yul-typed-identifier-list m-expression)
					; note: it's ok to define tips first since there's no interpret-? call 
					; process all the (id,type) pairs first; should remove the tag (pos=0)
					(define tips (get-typed-id-pairs (list-tail m-yul-typed-identifier-list 1)))
					; (printf "# [debug] tips-list: ~a\n" m-yul-typed-identifier-list)
					; (printf "# [debug] tips-tips: ~a\n" tips)


					(define r-expression
						; decide whether default values should be assigned or not
						(if (null? m-expression)
							; don't see a RHS, make default values
							(for/list ([dumb tips]) (bv 0 yul-default-bitvector))
							; there's RHS, eval it
							; note: should unwrap m-expression from list-rest by (list-ref xxx 0)
							(interpret-node args-register (list-ref m-expression 0))
						)
					)
					
					(if (equal? 1 (length tips))
						; =1
						(make-var args-register (list-ref (list-ref tips 0) 0) r-expression #:where "r")
						; >1
						(if (equal? (length tips) (length r-expression))
							(for ([i (in-range (length tips))])
								; tips looks like: ( ("xxx" "uint8") ... )
								(define i-pair (list-ref tips i))
								(define i-id (list-ref i-pair 0))
								(define i-type (list-ref i-pair 1))
								(define i-expr (list-ref r-expression i))
								; fixme: check whether types of LHS and RHS match
								; note: let instructions generate values stored in yul-register
								(make-var args-register i-id i-expr #:where "r")
							)
							(println-and-exit "# exception-exit: arity mismatch in yul_variable_declaration.")
						)
					)
					; (printf "# [debug] after declaration to ~a, memory is ~a\n" m-yul-typed-identifier-list yul-memory)
					; (printf "# [debug] after declaration: ~a\n" args-register)
				]

				; note: scope of yul_block will be introduced by its parent structure and itself
				;       parent scope contains return info
				;       self scope prevents multiple declaration, since there can be
				;       function xxx() { {let a} {let a} }
				;       and you need separate scope and chained writing to register to prevent conflicts
				; note: take care of break/continue/leave in this structure
				[(list-rest "yul_block" ms-statement)
					; note-important: scope register should be defined here so that statements of the block will share it in the for loop
					(define p-register (make-zhash))
					(define r-stay #t)
					(for ([m-statement ms-statement])
						; m-statement looks like: (statement (yul-continue ...))
						(define p-tag (list-ref (list-ref m-statement 1) 0))
						(match p-tag
							["yul_continue" (set! r-stay #f)] ; fixme: this is wrong
							["yul_break" (set! r-stay #f)] ; fixme: this is wrong
							["yul_leave" (set! r-stay #f)] ; fixme: this is wrong
							; fixme: should explicitly list out all possible tags
							[_ 
								(when r-stay 
									(if block-create-scope
										(interpret-node (cons p-register args-register) m-statement)
										(interpret-node args-register m-statement)
									)
								)
							]
						)
					)
				]
				[(list "yul_statement" m)
					; (printf "# [debug] interpret yul_statement: m is ~a\n" m)
					(interpret-node args-register m)
				]

				; yul_assignment LHS is plain access, which means it should always use yul-register
				[(list "yul_assignment" m-identifier-list m-expression)
					(define r-expression (interpret-node args-register m-expression))
					(define rids 
						(for/list ([p (list-tail m-identifier-list 1)])
							(list-ref p 1)
						)
					) ; remove the tag and get the id only
					; (printf "# [debug] rids-list: ~a\n" m-identifier-list)
					; (printf "# [debug] rids-rids: ~a\n" rids)
					(if (equal? 1 (length rids))
						; =1
						(write-var args-register (list-ref rids 0) r-expression #:where "r")
						; >1
						(if (equal? (length rids) (length r-expression))
							(for ([i (in-range (length rids))])
								; rids looks like: ( "xxx" "yyy" ... )
								(define i-id (list-ref rids i))
								(define i-expr (list-ref r-expression i))
								(write-var args-register i-id i-expr #:where "r")
							)
							(println-and-exit "# exception-exit: arity mismatch in yul_assignment.")
						)
					)
					; (printf "# [debug] after assignment to ~a, memory is ~a\n" m-identifier-list yul-memory)
				]
				[(list "yul_expression" m)
					(interpret-node args-register m)
				]

				; note: process built-in function in this level, and process user-defined functions in the next level
				[(list-rest "yul_function_call" m-identifier ms-expression)
					; (printf "# [debug] entering yul_function_call, function is ~a, args-register is ~a\n" m-identifier args-register)
					(define r-identifier (list-ref m-identifier 1))
					(define rs-expression
						(for/list ([m-expression ms-expression])
							(interpret-node args-register m-expression)
						)
					)
					; (printf "# [debug] calling ~a with args: ~a\n" r-identifier rs-expression)
					; (printf "# [debug] in the middle yul_function_call, function is ~a, args-register is ~a\n" m-identifier args-register)
					(when (not (hash-has-key? yul-functions r-identifier))
						(println-and-exit (format "# exception-exit: undefined function ~a." r-identifier))
					)
					(if (list-contains? yul-builtin-functions r-identifier)
						; it's built-in function, call it directly
						(apply (hash-ref yul-functions r-identifier) rs-expression)
						; it's user-defined function
						; note: load the arguments with values into newly introduced register before interpreting it
						(begin
							(define p-register (make-zhash))
							(define p-args (hash-ref yul-function-args r-identifier))
							(when (not (equal? (length p-args) (length rs-expression)))
								(println-and-exit (format "# exception-exit: arity mismatch when calling function ~a, expect ~a, got ~a." r-identifier (length p-args) (length rs-expression)))
							)
							(for ([i (in-range (length p-args))])
								(zhash-set! p-register (list-ref (list-ref p-args i) 0) (list-ref rs-expression i) )
							)
							(interpret-node (cons p-register args-register) (hash-ref yul-functions r-identifier))
						)
					)
				]

				; ================================================ ;
				; ==== function call specified by transaction ==== ;
				; ================================================ ;
				; note: arguments don't need evaluation again, which means you should pass values like 0x99 not "0x99"
				[(list-rest "txn_function_call" t-identifier t-arg-list)
					(define pilot-identifier (auto-pilot t-identifier))
					; (printf "# [debug] original function: ~a, pilot function: ~a\n" t-identifier pilot-identifier)
					(when (not (hash-has-key? yul-functions pilot-identifier))
						(println-and-exit (format "# exception-exit: undefined function ~a." pilot-identifier))
					)
					(if (list-contains? yul-builtin-functions pilot-identifier)
						; it's built-in function, call it directly
						(apply (hash-ref yul-functions pilot-identifier) t-arg-list)
						; it's user-defined function
						; note: load the arguments with values into newly introduced register before interpreting it
						(begin
							(define p-register (make-zhash))
							(define p-args (hash-ref yul-function-args pilot-identifier))
							(when (not (equal? (length p-args) (length t-arg-list)))
								(println-and-exit (format "# exception-exit: arity mismatch when calling function ~a, expect ~a, got ~a." t-identifier (length p-args) (length t-arg-list)))
							)
							(for ([i (in-range (length p-args))])
								(zhash-set! p-register (list-ref (list-ref p-args i) 0) (list-ref t-arg-list i) )
							)
							; (printf "# [debug] p-register: ~a\n" p-register)
							(interpret-node (cons p-register args-register) (hash-ref yul-functions pilot-identifier))
						)
					)
				]

				; note: if you need to read an identifier this way, it means it's plain access
				[(list "yul_identifier" m)
					; (printf "# [debug] yul_identifier is ~a, and current args-register is ~a\n" m args-register)
					; (printf "# [debug] yul_identifier is ~a\n" m)
					(define ret-val (read-var args-register m #:where "r"))
					; (printf "# [debug] yul_identifier is ~a, it gets: ~a\n" m ret-val)
					ret-val
				]

				[(list "yul_literal" m)
					(interpret-node args-register m)
				]
				[(list "yul_number_literal" m)
					(interpret-node args-register m)
				]
				[(list "yul_string_literal" m)
					; (println-and-exit "# exception: yul_string_literal structure is not supported, exit.")
					m
				]

				[(list "yul_hex_number" m)
					; (printf "# [debug] parsed number: ~a\n" (string->number (substring m 2) 16))
					(bv (string->number (substring m 2) 16) yul-default-bitvector)
				]
				[(list "yul_dec_number" m)
					(bv (string->number m 10) yul-default-bitvector)
				]
				
				; others: not implemented or error
				[_
					(println-and-exit (format "# exception-exit: structure is not interpretable, got: ~a." (list-ref arg-node 0)))
				]
			)
		)

		; =============================== ;
		; ==== helper/util functions ==== ;
		; =============================== ;


		; make a new variable in designated location
		; see the scoping schemes above
		; where: "m" - memory, "s" - storage, "r" - register
		(define (make-var args-register arg-id arg-val #:where where)
			(define r-register
				(match where
					["m" yul-memory]
					["s" yul-storage]
					["r" (list-ref args-register 0)]
					[_ (println-and-exit (format "# [exit] make-var: unsupported register location code, got: ~a.\n" where))]
				)
			)

			(define r-id
				(cond 
					[(bv? arg-id)
						(cond
							[(equal? "r" where) (format "~a" (bitvector->natural arg-id))]
							[(equal? "s" where) (bitvector->natural arg-id)]
							[(equal? "m" where)
								; shrink by 32 bytes (256 bits) and get translated/decoded address
								(define tad (/ (bitvector->natural arg-id) #x20))
								(when (not (integer? tad))
									(println-and-exit (format "# [exit] make-var: translated address for ~a is not an integer, got: ~a.\n"  where tad))
								)
								tad
							]
							[else (println-and-exit (format "# [panic] make-var: impossible branch.\n"))]
						)
					]
					[(string? arg-id)
						(cond
							[(equal? "r" where) arg-id]
							[(equal? "s" where)
								(println-and-exit (format "# [exit] make-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
							[(equal? "m" where)
								(println-and-exit (format "# [exit] make-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
						)
					]
					[else (println-and-exit (format "# [exit] make-var: internal error, got unsupported type of variable name in ~a, which is: ~a" where r-id))]
				)
			)

			(if (equal? "r" where)
				; in register
				(begin
					(when (zhash-has-key? r-register r-id)
						(println-and-exit (format "# [exit] make-var: variable already exists in ~a, got: ~a." where r-id))
					)
					(zhash-set! r-register r-id arg-val)
				)
				; in memory or storage
				(vector-set! r-register r-id arg-val)
			)
			
		)

		(define (write-var args-register arg-id arg-val #:where where)
			; (printf "# [debug] write-var register is ~a\n" args-register)
			(define r-register
				(match where
					["m" yul-memory]
					["s" yul-storage]
					["r" args-register]
					[_ (println-and-exit (format "# [exit] write-var: unsupported register location code, got: ~a." where))]
				)
			)
			
			(define r-id
				(cond 
					[(bv? arg-id)
						(cond
							[(equal? "r" where) (format "~a" (bitvector->natural arg-id))]
							[(equal? "s" where) (bitvector->natural arg-id)]
							[(equal? "m" where)
								; shrink by 32 bytes (256 bits) and get translated/decoded address
								(define tad (/ (bitvector->natural arg-id) #x20))
								(when (not (integer? tad))
									(println-and-exit (format "# [exit] write-var: translated address for ~a is not an integer, got: ~a.\n"  where tad))
								)
								tad
							]
							[else (println-and-exit (format "# [panic] write-var: impossible branch.\n"))]
						)
					]
					[(string? arg-id)
						(cond
							[(equal? "r" where) arg-id]
							[(equal? "s" where)
								(println-and-exit (format "# [exit] write-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
							[(equal? "m" where)
								(println-and-exit (format "# [exit] write-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
						)
					]
					[else (println-and-exit (format "# [exit] write-var: internal error, got unsupported type of variable name in ~a, which is: ~a" where r-id))]
				)
			)

			(if (equal? "r" where)
				; in register
				(begin
					(define r-found #f)
					(for/first ([p r-register] #:when (zhash-has-key? p r-id))
						(set! r-found #t)
						(zhash-set! p r-id arg-val)
					)
					(when (not r-found)
						(println-and-exit (format "# [exit] write-var: can't find variable for writing in ~a, got: ~a." where r-id))
					)
				)
				; in memory or storage
				(begin
					(vector-set! r-register r-id arg-val)
				)
			)

		)

		(define (read-var args-register arg-id #:where where)
			(define r-register
				(match where
					["m" yul-memory]
					["s" yul-storage]
					; ["r" (list-ref args-register 0)]
					["r" args-register]
					[_ (println-and-exit (format "# [exit] read-var: unsupported register location code, got: ~a." where))]
				)
			)
			
			(define r-id
				(cond 
					[(bv? arg-id)
						(cond
							[(equal? "r" where) (format "~a" (bitvector->natural arg-id))]
							[(equal? "s" where) (bitvector->natural arg-id)]
							[(equal? "m" where)
								; shrink by 32 bytes (256 bits) and get translated/decoded address
								(define tad (/ (bitvector->natural arg-id) #x20))
								(when (not (integer? tad))
									(println-and-exit (format "# [exit] read-var: translated address for ~a is not an integer, got: ~a.\n"  where tad))
								)
								tad
							]
							[else (println-and-exit (format "# [panic] read-var: impossible branch.\n"))]
						)
					]
					[(string? arg-id)
						(cond
							[(equal? "r" where) arg-id]
							[(equal? "s" where)
								(println-and-exit (format "# [exit] read-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
							[(equal? "m" where)
								(println-and-exit (format "# [exit] read-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
						)
					]
					[else (println-and-exit (format "# [exit] read-var: internal error, got unsupported type of variable name in ~a, which is: ~a" where r-id))]
				)
			)

			(define r-ret null)
			(if (equal? "r" where)
				; in register
				(begin
					(for/first ([p r-register] #:when (zhash-has-key? p r-id))
						(set! r-ret (zhash-ref p r-id))
					)
					(when (null? r-ret)
						(println-and-exit (format "# [exit] read-var: no variable named ~a is found in ~a for reading." r-id where))
					)
				)
				; in memory or storage
				(begin
					(set! r-ret (vector-ref r-register r-id))
				)
			)

			r-ret

		)

		; overwirte doesn't care about whether the id exists or not
		; if not, create it before writing
		(define (overwrite-var args-register arg-id arg-val #:where where)
			(define r-register
				(match where
					["m" yul-memory]
					["s" yul-storage]
					["r" (list-ref args-register 0)]
					[_ (println-and-exit (format "# [exit] overwrite-var: unsupported register location code, got: ~a." where))]
				)
			)
			
			(define r-id
				(cond 
					[(bv? arg-id)
						(cond
							[(equal? "r" where) (format "~a" (bitvector->natural arg-id))]
							[(equal? "s" where) (bitvector->natural arg-id)]
							[(equal? "m" where)
								; shrink by 32 bytes (256 bits) and get translated/decoded address
								(define tad (/ (bitvector->natural arg-id) #x20))
								(when (not (integer? tad))
									(println-and-exit (format "# [exit] overwrite-var: translated address for ~a is not an integer, got: ~a.\n"  where tad))
								)
								tad
							]
							[else (println-and-exit (format "# [panic] overwrite-var: impossible branch.\n"))]
						)
					]
					[(string? arg-id)
						(cond
							[(equal? "r" where) arg-id]
							[(equal? "s" where)
								(println-and-exit (format "# [exit] overwrite-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
							[(equal? "m" where)
								(println-and-exit (format "# [exit] overwrite-var: ~a doesn't accept string key, got ~a.\n" where arg-id))
							]
						)
					]
					[else (println-and-exit (format "# [exit] overwrite-var: internal error, got unsupported type of variable name in ~a, which is: ~a" where r-id))]
				)
			)


			(if (equal? "r" where)
				; in register
				(zhash-set! r-register r-id arg-val)
				; in memory or storage
				(vector-set! r-register r-id arg-val)
			)
		)


		; note: this will return a new copy
		(define (list-add arg-list arg-elem)
			(reverse (cons arg-elem (reverse arg-list)))
		)

		; whether list l contains element e
		(define (list-contains? l e)
			(if (list? (member e l))
				#t
				#f
			)
		)

		(define (get-typed-id-pairs arg-list)
			(define ret-list (list ))
			(define curr-item (list ))
			(for ([p arg-list])
				(match (list-ref p 0)
					["yul_identifier"
						(when (> (length curr-item) 0)
							(set! ret-list (list-add ret-list curr-item))
						)
						(set! curr-item (list (list-ref p 1)))
					]
					["yul_type_name"
						(set! curr-item (list-add curr-item (list-ref p 1)))
					]
					[x (println-and-exit (format "# exception-exit: invalid tag in yul_typed_identifier_list, got: ~a." x))]
				)
			)
			(when (> (length curr-item) 0)
				(set! ret-list (list-add ret-list curr-item))
			)
			ret-list
		)

		; ================================ ;
		; ==== Yul built-in functions ==== ;
		; ================================ ;
		; fixme: should check the types
		(define (initialize-builtin-functions)

			(hash-set! yul-functions "add" (lambda (x y) (bvadd x y)))
			(hash-set! yul-functions "sub" (lambda (x y) (bvsub x y)))
			(hash-set! yul-functions "mul" (lambda (x y) (bvmul x y)))
			(hash-set! yul-functions "div" (lambda (x y) (bvudiv x y)))
			(hash-set! yul-functions "sdiv" (lambda (x y) (bvsdiv x y)))
			(hash-set! yul-functions "mod" (lambda (x y) (bvsmod x y))) ; fixme: this is wrong
			(hash-set! yul-functions "smod" (lambda (x y) (bvsmod x y)))
			(hash-set! yul-functions "exp" (lambda (x y) (println-and-exit (format "# exception-exit: exp is not supported yet." x)) ))
			(hash-set! yul-functions "not" (lambda (x) (bvnot x)))
			(hash-set! yul-functions "lt" (lambda (x y) 
				(bool->bitvector (bvult x y) yul-default-bitvector)
			))
			(hash-set! yul-functions "gt" (lambda (x y) 
				(bool->bitvector (bvugt x y) yul-default-bitvector)
			))
			(hash-set! yul-functions "slt" (lambda (x y) 
				(bool->bitvector (bvslt x y) yul-default-bitvector)
			))
			(hash-set! yul-functions "sgt" (lambda (x y) 
				(bool->bitvector (bvsgt x y) yul-default-bitvector)
			))
			(hash-set! yul-functions "eq" (lambda (x y) 
				(bool->bitvector (bveq x y) yul-default-bitvector)
			))
			(hash-set! yul-functions "iszero" (lambda (x) 
				(bool->bitvector (bvzero? x) yul-default-bitvector)
			))
			(hash-set! yul-functions "and" (lambda (x y) (bvand x y)))
			(hash-set! yul-functions "or" (lambda (x y) (bvor x y)))
			(hash-set! yul-functions "xor" (lambda (x y) (bvxor x y)))
			(hash-set! yul-functions "shl" (lambda (x y) (bvshl y x))) ; see the latest doc of EVM dialect
			(hash-set! yul-functions "shr" (lambda (x y) 
				; (printf "# [debug]: shr gets x=~a, y=~a\n" x y)
				(bvlshr y x)
			)) ; see the latest doc of EVM dialect
			(hash-set! yul-functions "sar" (lambda (x y) (bvashr y x))) ; see the latest doc of EVM dialect


			(hash-set! yul-functions "mload" (lambda (p)
				(read-var null p #:where "m")
			))
			(hash-set! yul-functions "mstore" (lambda (p v)
				(overwrite-var null p v #:where "m")
			))

			(hash-set! yul-functions "sload" (lambda (p)
				(read-var null p #:where "s")
			))
			(hash-set! yul-functions "sstore" (lambda (p v)
				(overwrite-var null p v #:where "s")
			))

			; fixme
			(hash-set! yul-functions "memoryguard" (lambda (p)
				; (println-and-exit (format "# [not-implemented] memoryguard.\n"))
				p
			))
			; fixme
			(hash-set! yul-functions "callvalue" (lambda ()
				(println-and-exit (format "# [not-implemented] callvalue.\n"))
			))
			; fixme
			(hash-set! yul-functions "codecopy" (lambda (t f s)
				(println-and-exit (format "# [not-implemented] codecopy.\n"))
			))
			; fixme
			(hash-set! yul-functions "dataoffset" (lambda (x)
				(println-and-exit (format "# [not-implemented] dataoffset.\n"))
			))
			; fixme
			(hash-set! yul-functions "datasize" (lambda (x)
				(println-and-exit (format "# [not-implemented] datasize.\n"))
			))
			; fixme
			(hash-set! yul-functions "return" (lambda (p s)
				(println-and-exit (format "# [not-implemented] return.\n"))
			))
			; fixme
			(hash-set! yul-functions "number" (lambda ()
				(bv 233 yul-default-bitvector)
				; (bv (random 1000 2000) yul-default-bitvector)
			))
			; fixme
			; reference to: https://solidity.readthedocs.io/en/v0.7.3/internals/layout_in_storage.html?highlight=keccak256#mappings-and-dynamic-arrays
			(hash-set! yul-functions "keccak256" (lambda (p n)
				; (printf "# [debug] keccak256(~a, ~a)\n" p n)
				(define bv-interval (bv #x40 yul-default-bitvector))
				(define bv-half-interval (bv #x20 yul-default-bitvector))
				(when (not (equal? (bvadd p bv-interval) n))
					(println-and-exit (format "# keccak256-panic: arguments from one or more paths don't comply with the #x40 interval, got ~a and ~a" p n))
				)
				(define hex-p (read-var null p #:where "m")) ; p is key
				(define k (bvadd p bv-half-interval)) ; p + #x20 = n - #x20 is slot
				(define hex-k (read-var null k #:where "m"))
				; assume max size is 0xff, and we start to store mappings at 1000
				; (define dec-p (bitvector->natural hex-p))
				(define dec-p 0) ; hijack
				(define dec-k (bitvector->natural hex-k))
				; (printf "# [debug] read-keccak256(~a, ~a)\n" dec-p dec-k)
				; (define ret (+ 200 (+ dec-p (* #xff dec-k))))
				; (define ret (+ 200 (+ dec-p (* 10 dec-k))))
				; (define ret (+ 200 (+ dec-p (* 2 dec-k))))
				; (define ret (+ dec-p (* 10 dec-k)))
				; (define ret (+ 1 (+ dec-p (* 10 dec-k))))
				; (printf "# [debug] keccak256 result: ~a\n" ret)

				; note-important: every key may take more than 1 storage pos since it can be a struct
				; (define ret (+ (* 10 dec-p) (* 10 dec-k))) 

				; note-important: to avoid collision, you should map them 
				(define ret (modulo (+ (* 98765 dec-p) (* 4869 dec-k)) (vector-length yul-storage))) 
				; (define ret (modulo (+ (* 3 dec-p) (* 2 dec-k)) 10)) 

				(integer->bitvector ret yul-default-bitvector)
			))
			; fixme
			(hash-set! yul-functions "invalid" (lambda ()
				(println-and-exit (format "# [not-implemented] invalid.\n"))
			))
			; fixme
			(hash-set! yul-functions "calldatasize" (lambda ()
				(println-and-exit (format "# [not-implemented] calldatasize.\n"))
			))
			; fixme
			(hash-set! yul-functions "calldataload" (lambda (p)
				(println-and-exit (format "# [not-implemented] calldataload.\n"))
			))
			; fixme
			; caller gets the msg.sender
			(hash-set! yul-functions "caller" (lambda ()
				; (bv (random 1000 2000) yul-default-bitvector)
				(bv 7 yul-default-bitvector)
			))
			; fixme
			(hash-set! yul-functions "revert" (lambda (p s)
				; (println-and-exit (format "# [not-implemented] revert.\n"))
				; fixme-important: assert true will allow for false require statement to continue executing
				;                  this suppresses the assertion error in single branch condition (not captured by Rosette)
				;                  but will also raise some soundness issue;
				;                  setting a global state will eventually solve(bypass) the problem.
				(assert #t)
			))
			(hash-set! yul-functions "panic_error" (lambda ()
				; (println-and-exit (format "# panic_error triggered.\n"))
				(assert #f)
			))

			; store the identifiers of all built-in functions into a list
			(set! yul-builtin-functions (hash-keys yul-functions))
		)
		
	)
)