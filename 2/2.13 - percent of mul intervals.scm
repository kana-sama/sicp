(load "2/2.12 - percent constructor for intervals.scm")

; (a + b) / (ab + 1)
; where [a, b] are [percent(i) | i <- [x, y]]
(define (percent-of-mul x y)
  (let ((a (percent x))
        (b (percent y)))
    (/ (+ a b)
       (inc (* a b)))))

(let ((x (make-center-percent 1 .5))
      (y (make-center-percent 2 .4)))
  (print
    (percent-of-mul x y)           ; .75
    (percent (mul-interval x y)))) ; .75
