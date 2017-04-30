(load "1/1.43 - repeated self-compose.scm")

(define dx 0.0001)
(define (smooth f)
  (lambda (x)
    (average (f (- x dx))
             (f x)
             (f (+ x dx)))))

(define smooth5 (repeated smooth 5))
