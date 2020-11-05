( defun mayor (x y)
    (cond (
            (< x y) y
          )
             (T x)
    )
)


(defun maximo (X)
    (cond (
            (null X) 0
          )
            (T (mayor (car X) (maximo(cdr X)) ) )
    )
)

( print (maximo '(1 5 70 9)) )
