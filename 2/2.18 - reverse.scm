(define (reverse l)
  (let loop ((l l) (result '()))
    (if (null? l)
      result
      (loop (cdr l) (cons (car l) result)))))

(print (reverse (list 1 2 3)))
