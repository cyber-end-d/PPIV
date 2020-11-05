;Una función que aplicada a dos lista de igual longitud, donde la 1era contiene ceros
;y/o unos y la segunda objetos cualesquiera, devuelva una lista compuesta por aquellos
;elementos pertenecientes a la 2da lista cuya posición coincide con los valores 1 (uno) de
;la 1er lista (se utiliza la 1er lista como máscara?¿?¿? )


(defun binario (x y)
    (cond
        ( (null x) nil )
        ( (null y) nil )
        (T (cond
                ( (eq (car x) 1) (cons (car y) (binario (cdr x) (cdr y))) )
                (T (binario (cdr x) (cdr y)))
           )
        )
    )
)

( print (binario '(0 1 0 1) '(a b c d)) )
