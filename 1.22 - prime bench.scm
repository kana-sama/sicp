(load "utils")

(define (smallest-divisor n)
  (let loop ((n n) (test-divisor 2))
    (cond ((> (square test-divisor) n) n)
          ((divides? n test-divisor) test-divisor)
          (else (loop n (inc test-divisor))))))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (prime?-bench from)
  (let loop ((i from) (count 3))
    (if (not-zero? count)
      (let ((measurement (measure prime? i)))
        (let ((result (first measurement)))
          (if result
            (begin
              (write-line measurement)
              (loop (inc i) (dec count)))
            (loop (inc i) count)))))))

(prime?-bench 1000)
