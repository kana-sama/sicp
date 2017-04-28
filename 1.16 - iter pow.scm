(define (square x)
  (* x x))

(define (half x)
  (/ x 2))

(define (dec x)
  (- x 1))

(define (pow x n)
  (let loop ((extra 1) (result x) (factor n))
    (cond ((zero? factor) extra)
          ((even? factor) (loop extra (square result) (half factor)))
          (else (loop (* extra result) result (dec factor))))))
