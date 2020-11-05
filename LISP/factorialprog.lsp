;2.Definir la función de factorial utilizando PROG

(defun factorial (n)
    (prog ((cont n)
        (resultado 1))
        etiqueta
        (if (= 0 cont) (return result))
        (setq result (* cont result)
            cont (- cont 1)
        )
        (go etiqueta)
    )
)


(setf n '4)
(print (factorial n))
