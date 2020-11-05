( defun pos (a b)
            ( if (null a)
                  nil

                 ( if (> b 0)
                    (pos (cdr a) (- b 1))

                    (car a)
                 )
            )
)

(defun listaPos (x y)
    (cond ( (null x) nil )
          ( (null y) nil )
          (T (cons (pos x (car y)) (listaPos x (cdr y)))
          )
    )

)

(print (listaPos '(a b c d e) '(0 2 3 5 1)))
