(define (identity x) x)
(define (always x) (lambda (y) x))

(define (flip f)
  (lambda args
    (apply f (reverse args))))

(define (partial f . args1)
  (lambda (#!rest args2)
    (apply f (append args1 args2))))

(define (compose . fns)
  (lambda (x)
    (fold-right (lambda (f x) (f x)) x fns)))

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (inc x) (+ x 1))
(define (dec x) (- x 1))
(define (half x) (/ x 2))
(define (third x) (/ x 3))
(define (double x) (* x 2))
(define (reciprocal x) (/ 1.0 x))

(define (delta x y) (abs (- x y)))

(define (sum seq) (fold + 0 seq))
(define (average . args)
  (/ (sum args)
     (length args)))

(define (divides? a b) (zero? (remainder a b)))
(define (not-zero? x) (not (zero? x)))
(define (one? x) (= x 1))

(define (measure fn . args)
  (let ((start (runtime)))
    (let ((result (apply fn args)))
      (let ((finish (runtime)))
        (list result (- finish start))))))

(define (print . args)
  (for-each
    (lambda (x)
      (if (string? x)
        (write-string x)
        (begin
          (write x)
          (write-string " "))))
    args)
  (newline))

(define (close? a b precision)
  (<= (delta a b) precision))

(define (any? pred seq)
  (fold (lambda (x result) (or result (pred x))) false seq))

(define (all? pred seq)
  (fold (lambda (x result) (and result (pred x))) true seq))
