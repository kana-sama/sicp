(define (pow-mod base exp m)
  (cond ((zero? exp) 1)
        ((even? exp)
         (remainder (square (pow-mod base (half exp) m)) m))
        (else
         (remainder (* base (pow-mod base (dec exp) m)) m))))

(define (fermat-test? a n)
  (= (pow-mod a n n) a))

(define (test-for-range n)
  (let loop ((i 1))
    (cond ((= i n) true)
          ((fermat-test? i n) (loop (inc i)))
          (else false))))

(write-line (test-for-range 561))
(write-line (test-for-range 1105))
(write-line (test-for-range 1729))
(write-line (test-for-range 2465))
(write-line (test-for-range 2821))
(write-line (test-for-range 6601))
