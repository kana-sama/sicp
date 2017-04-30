(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (print-point point)
  (print "( " (x-point point) ", " (y-point point) ")"))

(define (average-point a b)
  (make-point (average (x-point a) (x-point b))
              (average (y-point a) (y-point b))))

(define (make-segment start end) (cons start end))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (midpoint-segment segment)
  (average-point (start-segment segment)
                 (end-segment segment)))

(print-point
  (midpoint-segment
    (make-segment (make-point 0.0 0.0)
                  (make-point 5.0 5.0))))
