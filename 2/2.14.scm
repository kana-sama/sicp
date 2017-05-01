(load "2/2.07 - selectors for interval object.scm")
(load "2/2.12 - percent constructor for intervals.scm")

(define one (make-interval 1 1))

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (div-interval
    one
    (add-interval (div-interval one r1)
                  (div-interval one r2))))

(print (par1 (cons 5 6) (cons 8 10))
       (par2 (cons 5 6) (cons 8 10)))

(define a (make-center-percent 20 .01))
(define b (make-center-percent 10 .02))

(print (div-interval a a)
       (div-interval a b))
