(define (count-leaves tree)
  (fold-right
    (lambda (node count)
      (if (list? node)
        (+ count (count-leaves node))
        (inc count)))
    0
    tree))

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

(print (count-leaves x))
