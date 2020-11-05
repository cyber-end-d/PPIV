(defun pertenece(a b)
    (cond
    ((null b) nil)
    ((eq a (car b)) T)
    (T (pertenece a (cdr b)))
    )
)

(defun intersec (x y)
    (cond
        ( (null x) nil )
        ( (null y) nil )
        ( T (if ( pertenece (car y) x )
                ( cons (car y) (intersec (cdr x) (cdr y)) )

                ( intersec x (cdr y) )
            )
        )
    )
)

(setf l '(1 2 3 7 5))
(setf h '(3 4 5 6))

(print (intersec l h) )
