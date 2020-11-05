(defun pertenece(x l)
    (cond
    ((null l) nil)
    ((eq x (CAR l)) T)
    (t (pertenece x (cdr l)))
    )
)
(setf l '(1 2 3))
(print (pertenece 2 l))
