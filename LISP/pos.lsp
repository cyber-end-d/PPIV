;funcion que aplicada a una lista y a un numero devuelva el elemento de la lista que esta en la posicion
; indicada a ese numero (el numero es <= al largo de la lista, sin usar la func primitiva nth)

( defun pos (a b)
            ( if (null a)
                  nil

                 ( if (> b 0)
                    (pos (cdr a) (- b 1))

                    (car a)
                 )
            )
)

(print (pos '(1 2 3) 2))
