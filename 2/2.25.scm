(print ((compose car cdaddr) '(1 3 (5 7) 9))
       (caar '((7)))
       ((compose cadadr cadadr cadadr) '(1 (2 (3 (4 (5 (6 7))))))))
