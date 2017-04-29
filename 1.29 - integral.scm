(load "utils")

(define (sum fn next a b)
  (cond ((> a b) 0)
        (else (+ (fn a)
                 (sum fn next (next a) b)))))

(define (integral f a b dx)
  (* dx (sum f
             (partial + dx)
             (+ a (half dx))
             b)))

(define (integral* f a b precision)
  (let ((h (/ (- b a) precision)))
    (define (f* i)
      (f (+ a (* i h))))
    (define (f** i)
      (cond ((zero? i) (f* i))
            ((odd? i) (* 4 (f* i)))
            (else (double (f* i)))))
    (* (third h)
       (sum f** inc 0 precision))))

(print
  (integral  cube 0.0 1.0 0.001)
  (integral* cube 0.0 1.0 10000))
