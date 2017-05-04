(define (subsets s)
  (if (null? s)
    (list '())
    (let ((head (car s))
          (rest (subsets (cdr s))))
      (append rest (map (partial cons head) rest)))))

(print (subsets (list 1 2 3)))
