(define (gcd a b)
  (cond ((zero? b) a)
        (else (gcd b (remainder a b)))))
