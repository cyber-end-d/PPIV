;22b) Definir la funci�n PRODUCTO realizando otra versi�n que disminuya el n�mero de llamadas

(defun producto (n1 n2)
    (cond ( (eq (or n1 n2) 0)  0 )
            (t (suma2 (producto (pred n1) n2) n2) )
    )

)

(print (producto 9 5))
