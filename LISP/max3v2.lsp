; max3 pero usando max2
#|(defun max(a b)
    (cond ((< a b) b)
          (T a)
    )
)

(defun max32(x y z)
    (cond ((>x (max y z)) x)
          (T (max y z))
    )
)|#

(defun max3v2 (x y z)
    (cond ((> x (max2 y z)) x)
    (t (max2 y z))
    )
)

(print(max 1 2))
(print(max32 1 2 4))
