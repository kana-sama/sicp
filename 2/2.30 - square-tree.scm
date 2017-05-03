(define (square-tree node)
  (if (list? node)
    (map square-tree node)
    (square node)))

(define x
  (list
    1
    (list
      2
      (list
        3
        4)
      5)
    (list
      6
      7)))

(print (square-tree x))
