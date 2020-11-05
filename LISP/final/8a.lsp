;8. Una función que aplicada a una matriz ( representada por una lista donde cada elemento
;es una sublista que representa una fila de la matriz) devuelva:
;a. la suma de los elementos de la diagonal principal

;Ej.: ( ( 1 2 3) (4 5 6) (7 8 9) )
;a) 1+5+9 = 15

(defun diagPorFila (f m) ;recibe una fila y el numero de fila, devuelve el elemento de la diagonal que corresponde
        (cond
            ( (null f) nil )
            (T
                (do ( (contM m (1- contM)) ;al iterar resta 1 al contador (numero de fila)
                      (fila f (cdr fila)) ;al iterar toma la cola de la fila
                    )
                    ( (eq contM 0) (car fila) ) ;cuando contador = 1 devuelve el elemento
                    ;(print "iterando: ")(print contM)(print fila)
                )
            )
        )
)

(defun sumar (x) ;suma los elementos de una lista
    (apply '+ x)
)

(defun getDiagonal (mat tam pos) ;obtiene lista con los elementos de la diagonal
        (cond
            ( (null mat) nil )
            ( (< pos tam) (cons
                                (diagPorFila (car mat) pos)
                                (getDiagonal (cdr mat) tam (1+ pos))
                          ) ;construye lista con el elemento de la diagonal de una fila y despues itera a la siguiente fila
            )
        )
)

(defun sumarDiagonal (mat) ;obtiene la matriz y suma la lista con los elementos de la diagonal
    (cond
        ( (null mat) nil )
        (T
            (sumar (getDiagonal mat (length mat) 0))
        )
    )
)

(setq m '( (1 2 3) (4 5 6) (7 8 9) ))
(print (sumarDiagonal m))
