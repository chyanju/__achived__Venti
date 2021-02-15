#lang rosette
(provide make-zhash zhash-has-key? zhash-ref zhash-set!)
(provide zvoid zvoid?)

(define (println-and-exit msg)
	(printf "~a\n" msg)
	(exit 0)
)
(define zvoid 'zvoid)
(define (zvoid? obj) 
	(cond
		[(union? obj) (for/all ([pp obj]) (zvoid? pp))]
		[else (equal? obj zvoid)]
	)
)

(define (make-zhash) (new zhash))
(define (zhash-has-key? arg-zhash arg-key) (send arg-zhash z-has-key? arg-key))
(define (zhash-ref arg-zhash arg-key) (send arg-zhash z-ref arg-key))
(define (zhash-set! arg-zhash arg-key arg-val) (send arg-zhash z-set! arg-key arg-val))

(define zhash
	(class* object% (printable<%>)
		(super-new)
		(field
			[cap 2000]
			[key-map (make-hash)]
			[key-counter 0]
			[val-vector (make-vector cap zvoid)]
		)

		(define/public (z-has-key? arg-key)
			(cond
				[(union? arg-key) (for/all ([k arg-key]) (z-has-key? k))]
				[(string? arg-key) 
					(if (hash-has-key? key-map arg-key)
						; key found in key-map, check if zvoid in case there are path conditions attached
						(! (zvoid? (vector-ref val-vector (hash-ref key-map arg-key))))
						; key not found in key-map, definitely not existing
						#f
					)
				]
				[else (println-and-exit (format "# [panic] zhash/has-key?: arg-key must be union or string, got: ~a." arg-key))]
			)
		)

		(define/public (z-ref arg-key)
			(cond
				[(union? arg-key) (for/all ([k arg-key]) (z-ref k))]
				[(string? arg-key) 
					(define ret-val (vector-ref val-vector (hash-ref key-map arg-key)))
					(if (zvoid? ret-val)
						(assert #f) ; invalid access, raise exception
						ret-val
					)
				]
				[else (println-and-exit (format "# [panic] zhash/ref: arg-key must be union or string, got: ~a." arg-key))]
			)
		)

		; make sure arg-key exists in key-map, if not, create one
		(define (secure-key arg-key)
			(cond
				[(union? arg-key) (for/all ([k arg-key]) (secure-key k))]
				[(string? arg-key)
					(when (not (hash-has-key? key-map arg-key))
						(hash-set! key-map arg-key key-counter)
						(set! key-counter (+ 1 key-counter))
					)
				]
				[else (println-and-exit (format "# [panic] zhash/secure-key: arg-key must be union or string, got: ~a." arg-key))]
			)
		)

		(define (secure-val arg-key arg-val)
			(cond
				[(union? arg-key) (for*/all ([k arg-key] [v arg-val]) (secure-val k v))]
				[(string? arg-key)
					(vector-set! val-vector (hash-ref key-map arg-key) arg-val)
				]
				[else (println-and-exit (format "# [panic] zhash/secure-val: arg-val must be union or string, got: ~a." arg-key))]
			)
		)

		(define/public (z-set! arg-key arg-val)
			; first tell whether there's already a key
			(secure-key arg-key)

			; then set the values
			; note: normally arg-key and arg-val have the same guard
			(secure-val arg-key arg-val)
		)

		; printable helper
		(define (to-string)
			(string-append 
				"#zhash("
				(string-join
					(filter
						(lambda (x) (> (string-length x) 0))
						(for/list ([qk (hash->list key-map)])
							(format "(~a . ~a)" (pretty-format (car qk)) (pretty-format (z-ref (car qk))))
						)
					)
					" "
				)
				")"
			)
		)

		; printable interface
		(define/public (custom-print port quoting-depth)
			(fprintf port (to-string)))
		(define/public (custom-write port)
			(fprintf port (to-string)))
		(define/public (custom-display port)
			(fprintf port (to-string)))

	)
)