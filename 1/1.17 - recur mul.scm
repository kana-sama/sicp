(define (mul a b)
  (cond ((zero? b) 0)
        ((even? b) (mul (double a) (half b)))
        (else (+ a (mul a (dec b))))))
