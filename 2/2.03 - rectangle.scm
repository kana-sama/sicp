(load "2/2.02 - point - segment - midpoint.scm")

(define (make-rect top-left bottom-right) (cons top-left bottom-right))
(define (top-left-point-rect rect) (car rect))
(define (bottom-right-point-rect rect) (cdr rect))

(define (make-rect-wh top-left width height)
  (let ((bottom-right (add-point top-left (make-point width height))))
    (make-rect top-left bottom-right)))

(define (width-rect rect)
  (let ((tl (top-left-point-rect rect))
        (br (bottom-right-point-rect rect)))
    (- (x-point br) (x-point tl))))

(define (height-rect rect)
  (let ((tl (top-left-point-rect rect))
        (br (bottom-right-point-rect rect)))
    (- (y-point br) (y-point tl))))

(define (perimeter-rect rect)
  (double (+ (width-rect rect) (height-rect rect))))

(define (square-rect rect)
  (* (width-rect rect) (height-rect rect)))

(let ((rect (make-rect (make-point -5 -1)
                       (make-point 5 1))))
  (print (perimeter-rect rect)
         (square-rect rect)))
