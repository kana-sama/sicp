(define (map-reduce-range mapper reducer next init a b)
  (let loop ((i a)
             (acc init))
    (cond ((> i b) acc)
          (else (loop (next i)
                      (reducer acc (mapper i)))))))

(define (product fn next a b)
  (map-reduce-range fn + next 0 a b))

(define (product fn next a b)
  (map-reduce-range fn * next 1 a b))
