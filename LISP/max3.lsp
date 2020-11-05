( defun max3(x y z)
    (cond ((and (< x y) (< z y)) y)
          ((and (< x z) (< y z)) z)
          (T x)
    )
)

#|(defun max3 (x y z)
    (cond
         ((> x y)(cond ((> x z) x)
                 (T (cond (> y z)) y)
                          (T z)
                 )
         )
    )
)|#

