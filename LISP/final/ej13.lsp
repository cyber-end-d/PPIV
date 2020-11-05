;13. Una función que aplicada a dos números naturales N y M, genere una matriz de N
;x M conteniendo las coordenadas de cada posición.
;Ej.: (coord 2 3 ) ------> ( ((1 1)(1 2)) ((2 1) (2 2)) ((3 1) (3 2)) )

(defun filas (n m)
    (do ( (contm 0 (1+ contm))
          (result nil)
        )
        ( (> contm m) result )
        ( setq result (append result (list(list n contm))) )
    )
)

(defun coord (n m)
    (do ( (contn 1 (1+ contn))
          (result nil)
        )

        ( (> contn n) result )

        ( setq result (append result (filas contn m)) )
    )
)

(print (coord 3 4))
