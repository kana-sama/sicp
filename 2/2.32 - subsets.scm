(define (subsets s)
  (if (null? s)
    (list '())
    (let ((head (car s))
          (rest (subsets (cdr s))))
      (append rest (map (lambda (x) (append x head)) rest)))))

(print (subsets (list 1 2 3)))


() -> (())
(1) -> ((1))
(1 2) -> ((2) (1 2))
