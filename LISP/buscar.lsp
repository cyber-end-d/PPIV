(defun buscar(x l)
    (cond
    ((null l) nil)
    ((eq x (CAR l)) x)
    (t (buscar x (cdr l)))
    )
)
(setf l '(1 2 3))
(print (buscar 2 l))
