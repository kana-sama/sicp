(define (mul a b)
  (let loop ((extra 0) (result a) (factor b))
    (cond ((zero? factor) extra)
          ((even? factor) (loop extra (double result) (half factor)))
          (else (loop (+ extra result) result (dec factor))))))
