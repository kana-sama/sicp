(define (fixed-point f first-guess)
  (let loop ((guess first-guess))
    (print guess)
    (let ((next-guess (f guess)))
      (if (close? next-guess guess 0.00001)
        next-guess
        (loop next-guess)))))

(print
  "Simple: "
  (fixed-point (lambda (x) (/ (log 1000) (log x))) 2))

(print
  "Average: "
  (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2))
