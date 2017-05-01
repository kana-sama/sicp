(define (last-pair l)
  (if (null? (cdr l))
    l
    (last-pair (cdr l))))

(print (last-pair (list 1 2 3)))
