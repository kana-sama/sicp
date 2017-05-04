(define x '((1 2 3)
            (4 5 6)))

(define y '((7 8)
            (9 10)
            (11 12)))

(define (dot-product v w)
  (sum (map * v w)))

(define (matrix-*-vector m v)
  (map (partial dot-product v) m))

(define (transpose m)
  (apply map list m))

(define (matrix-*-matrix m n)
  (map (partial matrix-*-vector (transpose n)) m))

(define (print-matrix matrix)
  (for-each print matrix))

(print-matrix (matrix-*-matrix x y))
