(define (cons a b)
  (lambda (f) (f a b)))

(define (car p)
  (p (lambda (a b) a)))

(define (cdr p)
  (p (lambda (a b) b)))

(load "2/2.01 - better rational constructor.scm")
