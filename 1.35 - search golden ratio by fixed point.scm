(load "algo/fixed-point")

(define phi
  (fixed-point (compose inc reciprocal) 1.0))

(print phi)
