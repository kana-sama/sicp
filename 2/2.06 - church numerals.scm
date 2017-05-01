(define zero
  (lambda (s) (lambda (z) z)))

(define (succ n)
  (lambda (s) (lambda (z) (s ((n s) z)))))

(define (->int n)
  ((n inc) 0))

(define _0 zero)
(define _1 (succ _0))
(define _2 (succ _1))
(define _3 (succ _2))
(define _4 (succ _3))
(define _5 (succ _4))

(define _1*
  (lambda (s) (lambda (z) (s z))))

(define _2*
  (lambda (s) (lambda (z) (s (s z)))))

(define (_+ a b)
  (lambda (s) (lambda (z) ((a s) ((b s) z)))))

(define (_* a b)
  (lambda (s) (lambda (z) ((a (b s)) z))))

(define (_^ a b)
  (b a))

(print (->int (_* _5 _3))
       (->int (_^ _5 _3)))
