;19 a) Definir los predicados IGUAL-P y DESIGUAL-P
(defun igual-p (n1 n2)
    (cond ((eq n1 n2) T)
        (t nil)
    )
)

(print (igual-p 1 3))

(defun desigual-p (n1 n2)
    (cond ((eq n1 n2) nil)
        (t T)
    )
)

(print (desigual-p 1 3))
