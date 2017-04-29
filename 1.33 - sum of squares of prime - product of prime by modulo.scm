(load "utils")
(load "algo/gcd")
(load "algo/prime")

(define (filter-map-reduce-range pred? mapper reducer next init a b)
  (let loop ((i a)
             (acc init))
    (cond ((> i b) acc)
          (else (loop (next i)
                      (if (pred? i)
                        (reducer acc (mapper i))
                        acc))))))

(define (filter-sum pred? fn next a b)
  (filter-map-reduce-range pred? fn + next 0 a b))

(define (filter-product pred? fn next a b)
  (filter-map-reduce-range pred? fn * next 1 a b))

(define (sum-of-squares-of-primes a b)
  (filter-sum prime? square inc a b))

(define (prod-of-prime-by-modulo n)
  (filter-product
    (lambda (i) (one? (gcd i n)))
    identity
    inc
    1
    n))

(print (sum-of-squares-of-primes 1 10))
(print (prod-of-prime-by-modulo 5))
