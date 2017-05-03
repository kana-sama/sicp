(define x (list (list 1 2) (list 3 4)))

(define (fringe node)
  (if (list? node)
    (fold
      (lambda (subnode items) (append items (fringe subnode)))
      (list)
      node)
    (list node)))

(print (fringe x))
(print (fringe (list x x)))
(print (fringe (list x x x)))
