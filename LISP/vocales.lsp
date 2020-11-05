;Una funcion que aplicada a una lista de letras devuelva una lista que tiene las vocales de la misma (usar pertenece)
(defun pertenece(a b)
    (cond
    ((null b) nil)
    ((eq a (car b)) T)
    (T (pertenece a (cdr b)))
    )
)

(defun vocales (x)
    (setf voc '(a e i o u))
    (cond
        ( (null x) nil )
        ( (pertenece (car x) voc) (cons (car x) (vocales (cdr x))) )
        (T (vocales(cdr x)))
    )
)

( print (vocales '(m u r c i e l a g o a e i o u)) )
