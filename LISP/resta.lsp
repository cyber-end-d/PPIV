;21) Ahora sí redefinir RESTA

(defun resta (n1 n2)
    (cond ((< n1 n2) 0)
        (t (cond ((= n2 0) n1)
            (t ( pred ( resta n1 (pred n2)) )
            )
           )
        )
    )
)

(print (resta 9 5))
