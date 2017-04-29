(define (fixed-point f first-guess)
  (let loop ((guess first-guess))
    (let ((next-guess (f guess)))
      (if (close? next-guess guess 0.00001)
        next-guess
        (loop next-guess)))))

(define phi
  (fixed-point (compose inc reciprocal) 1.0))
