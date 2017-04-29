(load "1.35 - search golden ratio by fixed point.scm")
(load "1.43 - repeated self-compose.scm")

(define (average-damp f)
  (lambda (x)
    (average x (f x))))

(define (n-root n)
  (lambda (x)
    (fixed-point
      ((repeated average-damp (quotient n 2))
        (lambda (y) (/ x (expt y (dec n)))))
      1.0)))

(let loop ((i 0))
  (if (< i 15)
    (begin
      (print
        "Exp: " i
        "Value: " ((n-root i) (expt 5 i)))
      (loop (inc i)))))
