(define (square x)
  (* x x))

(define (sum-of-squares a b c)
  (let ((values (sort (list a b c) >)))
    (let ((x (car  values))
          (y (cadr values)))
      (+ (square x) (square y)))))

(define (sum-of-squares* a b c)
  (- (+ (square a) (square b) (square c))
     (square (min a b c))))
