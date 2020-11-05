;8. Una función que aplicada a una matriz ( representada por una lista donde cada elemento
;es una sublista que representa una fila de la matriz) devuelva:
;c. la matriz traspuesta

;Ej.: ( ( 1 2 3) (4 5 6) (7 8 9) )
;c) ( (1 4 7) (2 5 8) (3 6 9)

(defun getFilaTranspuesta (mat mT) ;Recibe la matriz y el numero de fila que sera en la matriz transpuesta, devuelve fila transpuesta
    (setq len (length mat))
    (setq result nil)
    ;(print "len")(print len)(print result)
    (dotimes
        (cont len result) ;recorre todas las filas de a una
        (setq result
            (append result
                (list (nth (1- mT) (car mat))) ;agrega a result el numero correspondiente de la fila, nth empieza desde 0 entonces 1- mT
            )
        )
        ;(print (car mat))
        ;(print result)
        (setq mat (cdr mat)) ;pasa a las siguientes filas
        ;(print "iterando: ")(print cont)(print mat)
    )
)

(defun transpuesta (mat) ;Recibe matriz y devuelve lista con cada fila transpuesta
    (setq len (length mat))
    (setq result nil)
    (cond
        ( (null mat) nil )
        ( T
            (dotimes
                (cont len result)
                (setq result
                    (append result (list (getFilaTranspuesta mat (1+ cont))))
                )
            )
        )
    )
)

( setq m '( (1 2 3) (4 5 6) (7 8 9) ) )
(print (transpuesta m))
