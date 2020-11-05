;19 b) Definir el predicado MENOR-P tal que
(defun menor-p (n1 n2)
    (cond ((< n1 n2) T)
        (t nil)
    )
)

(print (menor-p 5 3))

(defun suma1 (n1 n2)
    (cond ((eq n1 0) n2)
        (t ( + (- n1 1) (+ n2 1) ))
    )
)

(print (suma1 5 6))

(defun suma2 (n1 n2)
    (cond ((eq n1 0) n2)
        (t (+ (+( - n1 1) n2) 1) )
    )
)

(print (suma2 9 6))

(defun pred (n)
    (- n 1)
)
(defun suc (n)
    (+ n 1)
)
(print (pred 9))
(print (suc 9))

;suma recursiva
(defun suma (n1 n2)
    (cond ((eq n1 0) n2)
     (t (print (suc ( suma (pred n1) n2 ) )) )
                                       )

)

(print (suma 9 3))
