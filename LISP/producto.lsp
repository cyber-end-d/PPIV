;22b) Definir la función PRODUCTO realizando otra versión que disminuya el número de llamadas

(defun producto (n1 n2)
    (cond ( (eq (or n1 n2) 0)  0 )
            (t (suma2 (producto (pred n1) n2) n2) )
    )

)

(print (producto 9 5))
