(define (for-each fn seq)
  (let loop ((seq seq))
    (if (null? seq)
      #!unspecific
      (begin
        (fn (car seq))
        (loop (cdr seq))))))

(print (for-each print (list 1 2 3)))
