(define (iterative-improve enough? improve)
  (lambda (guess)
    (let loop ((guess guess))
      (if (enough? guess)
        guess
        (loop (improve guess))))))

(define (sqrt* x)
  ((iterative-improve
     (lambda (y) (close? (square y) x 0.0001))
     (lambda (y) (average y (/ x y))))
    1.0))

(define (fixed-point* f)
  ((iterative-improve
     (lambda (x) (close? x (f x) 0.00001))
     (lambda (x) (f x)))
    1.0))

(define phi (fixed-point* (compose inc reciprocal)))

(print (sqrt* 25)) ; 25
(print phi)        ; 1.6180
