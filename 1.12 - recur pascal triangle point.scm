(define (dec x)
  (- x 1))

(define (base? x y)
  (= x y 0))

(define (edge? x y)
  (or (= x 0)
      (= x y)))

(define (pascal-point x y)
  (cond ((base? x y) 1)
        ((edge? x y) 1)
        (else (+ (pascal-point x (dec y))
                 (pascal-point (dec x) (dec y))))))
