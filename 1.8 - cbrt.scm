(define (square x)
  (* x x))

(define (delta a b)
  (abs (- a b)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? prev-guess guess x)
  (< (delta prev-guess guess) 0.001))

(define (cbrt-iter prev-guess x)
  (let ((guess (improve prev-guess x)))
    (if (good-enough? prev-guess guess x)
      guess
      (cbrt-iter guess x))))

(define (cbrt x)
  (cbrt-iter 1.0 x))
