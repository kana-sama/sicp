(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define (count-coins amount coins)
  (cond ((zero? amount) 1)
        ((negative? amount) 0)
        ((null? coins) 0)
        (else (+ (count-coins amount (cdr coins))
                 (count-coins (- amount (car coins)) coins)))))

(print (count-coins 100 us-coins))
