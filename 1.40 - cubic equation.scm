(define (fixed-point f first-guess)
  (let loop ((guess first-guess))
    (let ((next-guess (f guess)))
      (if (close? next-guess guess 0.00001)
        next-guess
        (loop next-guess)))))

(define dx 0.0001)
(define (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
  (let ((g* (deriv g)))
    (lambda (x) (- x (/ (g x) (g* x))))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

; y = ax^3 + bx^2 + cx + d
(define (cubic a b c d)
  (lambda (x) (+ (* a (cube x))
                 (* b (square x))
                 (* c x)
                 d)))

(print (newtons-method (cubic 1 5 10 150) 1.0))
