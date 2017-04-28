(define (half x) (/ x 2))
(define (double x) (* x 2))
(define (dec x) (- x 1))

(define (mul a b)
  (cond ((zero? b) 0)
        ((even? b) (mul (double a) (half b)))
        (else (+ a (mul a (dec b))))))
