(defun pertenece(a b)
    (cond
    ((null b) nil)
    ((eq a (car b)) T)
    (T (pertenece a (cdr b)))
    )
)

(defun unir (x y)
    (cond
        ( (null x) y )
        ( (null y) x )
        ( T (if ( pertenece (car y) x )
                ( unir x (cdr y) )

                ( cons (car y) (unir x (cdr y)) )
            )
        )
    )
)

(setf l '(1 2 3 4 5))
(setf h '(7 5 6))

(print (unir l h) )


