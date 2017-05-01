(load "2/2.07 - selectors for interval object.scm")

(define (make-center-width center width)
  (make-interval (- center width)
                 (+ center width)))

(define (center interval)
  (half (+ (lower-bound interval)
           (upper-bound interval))))

(define (width interval)
  (half (- (upper-bound interval)
           (lower-bound interval))))

(define (make-center-percent center percent)
  (let ((width (* center percent)))
    (make-center-width center width)))

(define (percent interval)
  (/ (width interval)
     (center interval)))
