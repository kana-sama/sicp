(define (repeated f n)
  (let loop ((result identity) (i n))
    (if (zero? i)
      result
      (loop (compose f result) (dec i)))))

(define (repeated* f n)
  (let loop ((extra identity) (result f) (i n))
    (cond ((zero? i) extra)
          ((even? i) (loop extra (compose result result) (half i)))
          (else (loop (compose extra result) result (dec i))))))
