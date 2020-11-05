;1. Definir la función  suma que devuelva la suma de los elementos de una lista utilizando DO

(defun suma (l)
    (DO ((x l (cdr x))
        (r 0 (+ r (car x))))
        ((null x) r)
    )
)

(setf l '(1 2 3 4))
(print (suma l))
