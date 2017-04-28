(load "utils")

(define (pow x n)
  (let loop ((extra 1) (result x) (power n))
    (cond ((zero? power) extra)
          ((even? power) (loop extra (square result) (half power)))
          (else (loop (* extra result) result (dec power))))))
