(define (identity x) x)
(define (always x) (lambda (y) x))

(define (partial f #!rest args1)
  (lambda (#!rest args2)
    (apply f (append args1 args2))))

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (inc x) (+ x 1))
(define (dec x) (- x 1))
(define (half x) (/ x 2))
(define (third x) (/ x 3))
(define (double x) (* x 2))

(define (average x y) (/ (+ x y) 2))
(define (delta x y) (abs (- x y)))

(define (divides? a b) (zero? (remainder a b)))
(define (not-zero? x) (not (zero? x)))

(define (measure fn #!rest args)
  (let ((start (runtime)))
    (let ((result (apply fn args)))
      (let ((finish (runtime)))
        (list result (- finish start))))))

(define (print #!rest args)
  (map
    (lambda ( x)
      (write x)
      (write-string " "))
    args)
  (newline))
