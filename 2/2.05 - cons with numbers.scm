(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (divs-count n d)
  (let loop ((result 0) (n n))
    (if (divides? n d)
      (loop (inc result) (/ n d))
      result)))

(define (car pair)
  (divs-count pair 2))

(define (cdr pair)
  (divs-count pair 3))

(load "2/2.01 - better rational constructor.scm")
