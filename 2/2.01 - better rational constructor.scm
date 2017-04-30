(define (make-rat n d)
  (let ((k (* (gcd n d)
              (if (negative? d) -1 1))))
    (cons (/ n k) (/ d k))))

(define (numer rat)
  (car rat))

(define (denom rat)
  (cdr rat))

(define (rat->float rat)
  (/ (+ .0 (numer rat))
     (denom rat)))

(define (add-rat a b)
  (make-rat (+ (* (numer a) (denom b))
               (* (numer b) (denom a)))
            (* (denom a) (denom b))))

(define (neg-rat rat)
  (make-rat (- (numer rat))
            (denom rat)))

(define (reciprocal-rat rat)
  (make-rat (denom rat)
            (numer rat)))

(define (sub-rat a b)
  (add-rat a (neg-rat b)))

(define (mul-rat a b)
  (make-rat (* (numer a) (numer b))
            (* (denom a) (denom b))))

(define (div-rat a b)
  (mul-rat a (reciprocal-rat b)))

(define (equal-rat? a b)
  (= (* (numer a) (denom b))
     (* (numer b) (denom a))))

(print
  (equal-rat? (make-rat 5 6)
              (make-rat 10 12))
  (rat->float
    (div-rat (make-rat 10 5)
             (make-rat 2 4))))
