(define (horner-eval x coefs)
  (fold-right
    (lambda (a result)
      (+ (* result x) a))
    0
    coefs))

(print (horner-eval 2 (list 1 3 0 5 0 1)))
