(load "utils")

(define (sum fn next a b)
  (let loop ((i a) (result 0))
    (cond ((> i b) result)
          (else (loop (next i)
                      (+ result (fn i)))))))
