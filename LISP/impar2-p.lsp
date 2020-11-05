;b) realizar lo mismo peor con recursividad CRUZADA

(defun impar2-p (n)
    (cond ((par-p n) nil)
            (t T )
    )

)

(print (impar2-p 8))

(defun par2-p (n)
    (cond ((impar-p n) nil)
            (t T )
    )

)

(print (par2-p 9))
