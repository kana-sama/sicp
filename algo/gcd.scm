(define (gcd a b)
  (if (zero? b)
    (abs a)
    (gcd b (remainder a b))))
