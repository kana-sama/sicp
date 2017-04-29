(load "algo/fixed-point")

(print (fixed-point
         (lambda (x)
           (/ (log 1000)
              (log x)))
         2)
       (fixed-point
         (lambda (x)
           (average x
                    (/ (log 1000)
                       (log x))))
         2))
