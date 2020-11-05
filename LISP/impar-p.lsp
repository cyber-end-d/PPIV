;23)   Definir los predicados PAR-P e IMPAR-P tales que
(defun par-p (n)
    (cond ((eq (mod n 2) 0) T)
            (t nil )
    )

)

(print (par-p 8))

(defun impar-p (n)
    (cond ((eq (mod n 2) 0) nil)
            (t T )
    )

)

(print (impar-p 9))
