(define (square x)
  (* x x))

(define (average a b)
  (/ (+ a b) 2))

(define (delta a b)
  (abs (- a b)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? prev-guess guess x)
  (< (delta prev-guess guess) 0.001))

(define (sqrt-iter prev-guess x)
  (let ((guess (improve prev-guess x)))
    (if (good-enough? prev-guess guess x)
      guess
      (sqrt-iter guess x))))

(define (sqrt x)
  (sqrt-iter 1.0 x))
