(load "2/2.07 - selectors for interval object.scm")

(define div-interval* div-interval)

(define (div-interval x y)
  (if (and (<= (lower-bound y) 0)
           (>= (upper-bound y) 0))
    (error "second arg shound not span zero")
    (div-interval* x y)))
