(define (cont-frac n d k)
  (let loop ((result 0) (k k))
    (if (zero? k)
      result
      (loop (/ (n k) (+ (d k) result))
            (dec k)))))

(define (calc-d i)
  (if (divides? (inc i) 3)
    (double (third (inc i)))
    1))

(print (+ 2(cont-frac (always 1.0) calc-d 10)))
