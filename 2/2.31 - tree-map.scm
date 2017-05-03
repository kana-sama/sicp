(define (tree-map f node)
  (if (list? node)
    (map (partial tree-map f) node)
    (f node)))

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

(print (tree-map (partial * 2) x))
(print (tree-map square x))
