;20 c)  Redefinir la funci�n SUMA, SUMA 2, de forma que el n�mero de llamadas a SUMA 2 al calcular (SUMA 2 X Y) sea el m�nimo de X e Y. ( usando todo lo definido en 18 y las funciones predecesor y sucesi�n)

(defun suma2 (n1 n2)
    (cond ((= n1 0) n2)
        (t (cond ((> n2 n1) (print (suc ( suma2 (pred n1) n2 ) )))
                (t (print (suc ( suma2 (pred n2) n1 ) )) )
            )
        )                               )

)

(print (suma2 9 3))

