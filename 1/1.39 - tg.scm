(define (cont-frac n d k)
  (let loop ((result 0) (k k))
    (if (zero? k)
      result
      (loop (/ (n k) (+ (d k) result))
            (dec k)))))

(define (tan* x)
  (define (n i) (if (one? i) x (- (square x))))
  (define d (compose dec double))
  (cont-frac n d 1000))

(define pi 3.1415)

(print (tan  (/ pi 6))
       (tan* (/ pi 6)))
