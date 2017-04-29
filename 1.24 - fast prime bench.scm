(define (pow-mod base exp m)
  (cond ((zero? exp) 1)
        ((even? exp)
         (remainder (square (pow-mod base (half exp) m)) m))
        (else
         (remainder (* base (pow-mod base (dec exp) m)) m))))

(define (fermat-test n)
  (define (try a)
    (= (pow-mod a n n) a))
  (try (inc (random (dec n)))))

(define (fast-prime? n times)
  (cond ((zero? times) true)
        ((fermat-test n) (fast-prime? n (dec times)))
        (else false)))

(define (prime?-bench from)
  (let loop ((i from) (count 3))
    (if (not-zero? count)
      (let ((measurement (measure fast-prime? i 10)))
        (let ((result (first measurement)))
          (if result
            (begin
              (write-line measurement)
              (loop (inc i) (dec count)))
            (loop (inc i) count)))))))
