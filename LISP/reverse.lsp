;9) La función (REVERSE L) devuelve la lista obtenida escribiendo los elementos de L en orden inverso.
;Por ejemplo,  (REVERSE '(A B C)) ---> (C B A).
;Ejercicio: Redefinir la función REVERSE y llamarle N-REVERSE.

(defun init (x)
    (cond
        ( (null x) nil )
        (T (cond
                ( (> (length x) 1) (cons (car x) (init (cdr x))) )
           )
        )
    )
)

(defun n-reverse (x)
    (cond
        ( (null x) nil )
        (T (append (last x) (n-reverse (init x)))
        )
    )
)

( print (n-reverse '(a b c d e)) )
