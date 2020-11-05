;8. Una función que aplicada a una matriz ( representada por una lista donde cada elemento
;es una sublista que representa una fila de la matriz) devuelva:
;b. una lista que contenga los elementos de la otra diagonal

;Ej.: ( ( 1 2 3) (4 5 6) (7 8 9) )
;b) (3 5 7)

(defun diagInvPorFila (f m) ;obtiene elemento de la diagInv de una fila
    (setq aux (- (1+ (length f)) m)) ;(posicion del elemento = (len +1) - m)
    ;(print "aux: ")(print aux)
    (cond
        ( (null f) nil )
        (T
            (do ( (cont 1 (1+ cont)) ;va recorriendo todos los num de la fila desde el primero
                  (fila f (cdr fila))
                )
                ( (eq cont aux) (car fila) )
                ;(print "iterando: ")(print cont)(print fila)

            )
        )
    )
)

(defun getDiagInv (m tam pos) ;construye lista con los elementos de la diagInv
    (if (>= tam pos)
        (cons
            (diagInvPorFila (car m) pos) ;obtiene elemento correspondiente a la fila
            (getDiagInv (cdr m) tam (1+ pos)) ;itera pasando a la siguiente fila
        )
    )
)

(defun diagInv (mat) ;recibe matriz y devuelve diagInv
    (cond
        ( (null mat) nil )
        ( T
            (getDiagInv mat (length mat) 1)
        )
    )
)

( setq m ( ( 1 2 3) (4 5 6) (7 8 9) ) )
(print (diagInv m))
