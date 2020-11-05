;11) La función (REMOVE S L) devuelve la lista obtenida a partir de L
;borrando S n el  primer nivel, Por ejemplo, (REMOVE 'A '(A B (A C) A)) ---> (B (A C))
;Ejercicio: Redefinir la función REMOVE y llamarle N-REMOVE


(defun n-remove (x y)
    (cond
        ( (null y) nil )
        ( (null x) y )
        ( (eq (car y) (car x)) (n-remove x (cdr y)) )
        ( T (cons (car y) (n-remove x (cdr y))) )
    )
)

( print (n-remove '(a) '(a b (a c) a)) )
