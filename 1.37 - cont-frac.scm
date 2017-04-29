(define (cont-frac n d k)
  (cond ((zero? k) 0)
        (else (/ (n k)
                 (+ (d k)
                    (cont-frac n d (dec k)))))))

(define (cont-frac* n d k)
  (let loop ((result 0) (k k))
    (cond ((zero? k) result)
          (else (loop (/ (n k)
                         (+ (d k) result))
                      (dec k))))))

(define (phi-with-cont-frac fn)
  (reciprocal
    (fn (always 1.0)
        (always 1.0)
        12)))

(print (phi-with-cont-frac cont-frac)
       (phi-with-cont-frac cont-frac*))
