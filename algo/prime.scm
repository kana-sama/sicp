(define (next-divisor divisor)
  (if (= divisor 2)
    3
    (+ divisor 2)))

(define (smallest-divisor n)
  (let loop ((n n) (test-divisor 2))
    (cond ((> (square test-divisor) n) n)
          ((divides? n test-divisor) test-divisor)
          (else (loop n (next-divisor test-divisor))))))

(define (prime? n)
  (= n (smallest-divisor n)))
