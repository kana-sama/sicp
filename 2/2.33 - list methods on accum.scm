(define (map f seq)
  (fold-right (lambda (x acc) (cons (f x) acc)) (list) seq))

(define (append seq1 seq2)
  (fold-right cons seq2 seq1))

(define (length seq)
  (fold (lambda (_ l) (inc l)) 0 seq))

(print (map inc (list 1 2 3)))
(print (append (list 1 2) (list 3 4)))
(print (length (list 1 2)))
