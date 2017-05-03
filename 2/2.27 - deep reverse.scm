(define (deep-reverse seq)
  (define (try-reverse x)
    (if (list? x) (deep-reverse x) x))
  (let loop ((seq seq) (result '()))
    (if (null? seq)
      result
      (loop (cdr seq) (cons (try-reverse (car seq)) result)))))

(define (deep-reverse* seq)
  (let loop ((seq seq) (result '()))
    (cond ((null? seq) result)
          ((list? (car seq))
           (loop (cdr seq) (cons (deep-reverse* (car seq)) result)))
          (else
           (loop (cdr seq) (cons (car seq) result))))))

(let ((seq '((8 7 6) 5 (4 3) (2 1) 0)))
  (print (deep-reverse  seq)
         (deep-reverse* seq)))
