(defun partes (conj)
    (cond
        ( (null conj) (list nil) ) ;para que incluya nil en las partes (vacio es subconjunto)
        (T
            (append
                (mapcar #'(lambda (x)
                                (cons
                                    (car conj) ;toma primer elemento de la lista (conj)
                                    x ;construye lista con el elemento que toma mapcar (cada uno del conj)
                                )
                          )
                          (partes (cdr conj)) ;recursividad, toma el resto de lso elementos del conj
                )
                (partes (cdr conj))
            )
        )
    )
)
(print (partes '(a b c)))
