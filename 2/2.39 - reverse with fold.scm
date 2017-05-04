(define (reverse* seq)
  (fold cons '() seq))

(define (reverse** seq)
  (fold-right (lambda (x r) (append r (list x))) '() seq))

(print (reverse*  '(1 2 3 4)))
(print (reverse** '(1 2 3 4)))
