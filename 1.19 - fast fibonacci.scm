(load "utils")

; Tpq([a, b]) = [bq + aq + ap, bp + aq]
; Tp'q' = Tpq . Tpq
;
; Tpq(Tpq([a, b]))
;   = Tpq([bq + aq + ap, bp + aq])
;   = [ q(bp + aq) + q(bq + aq + ap) + p(bq + aq + ap)
;     , p(bp + aq) + q(bq + aq + ap) ]
;   = [ bpq + aq^2 + bq^2 + aq^2 + apq + bpq + apq + ap^2
;     , bp^2 + apq + bq^2 + aq^2 + apq ]
;   = [ b(2pq + q^2) + a(2q^2 + 2pq + p^2)
;     , b(p^2 + q^2) + a(2pq + q^2) ]
;
; Let p' = p^2 + q^2
; and q' = 2pq + q^2
; in  Tp'q' = Tpq . Tpq

(define (next-p p q)
  (+ (square p) (square q)))

(define (next-q p q)
  (+ (* 2 p q) (square q)))

(define (shift-a a b p q)
  (+ (* b q) (* a q) (* a p)))

(define (shift-b a b p q)
  (+ (* b p) (* a q)))

(define (fib n)
  (let loop ((a 1) (b 0) (p 0) (q 1) (n n))
    (write-line n)
    (cond ((zero? n) b)
          ((even? n) (loop a b (next-p p q) (next-q p q) (half n)))
          (else (loop (shift-a a b p q)
                      (shift-b a b p q)
                      p q (dec n))))))
