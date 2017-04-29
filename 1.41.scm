(define (double f)
  (compose f f))

(print (((double (double double)) inc) 5)) ; 21
