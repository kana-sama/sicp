(define (make-mobile left right)
  (cons left right))

(define (mobile? structure)
  (pair? structure))

(define (make-branch length structure)
  (cons length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))

(define (left-structure mobile)
  (branch-structure (left-branch mobile)))

(define (right-structure mobile)
  (branch-structure (right-branch mobile)))

(define (total-weight structure)
  (if (mobile? structure)
    (+ (total-weight (left-structure structure))
       (total-weight (right-structure structure)))
    structure))

(define (torque branch)
  (* (branch-length branch)
     (total-weight (branch-structure branch))))

(define (balanced? structure)
  (if (mobile? structure)
    (and (balanced? (left-structure structure))
         (balanced? (right-structure structure))
         (= (torque (left-branch structure))
            (torque (right-branch structure))))
    true))

(define x
  (make-mobile
    (make-branch 1 10)
    (make-branch 1
      (make-mobile
        (make-branch 1 5)
        (make-branch 1 5)))))

(print (total-weight x)
       (balanced? x))
