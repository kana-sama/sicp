(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (fold-points fx fy a b)
  (make-point (fx (x-point a) (x-point b))
              (fy (y-point a) (y-point b))))

(define (fold-points* f a b)
  (fold-points f f a b))

(define (add-point a b)
  (fold-points* + a b))

(define (average-point a b)
  (fold-points* average a b))

(define (print-point point)
  (print "( " (x-point point) ", " (y-point point) ")"))

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
