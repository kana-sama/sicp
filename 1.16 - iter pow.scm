(load "utils")

(define (pow x n)
  (let loop ((extra 1) (result x) (factor n))
    (cond ((zero? factor) extra)
          ((even? factor) (loop extra (square result) (half factor)))
          (else (loop (* extra result) result (dec factor))))))
