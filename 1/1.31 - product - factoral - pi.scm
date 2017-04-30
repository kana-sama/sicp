(define (map-reduce-range mapper reducer next init a b)
  (let loop ((i a)
             (acc init))
    (cond ((> i b) acc)
          (else (loop (next i)
                      (reducer acc (mapper i)))))))

(define (sum fn next a b)
  (map-reduce-range fn + next 0 a b))

(define (product fn next a b)
  (map-reduce-range fn * next 1 a b))

(define (factorial n)
  (product * inc 2 n))

(define pi
  (* 4 (product
         (lambda (i)
           (/ (* (dec i) (inc i))
              (square i)))
         (partial + 2)
         3.0
         100000)))

(print
  (factorial 5)
  pi)
