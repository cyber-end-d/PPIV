( defun pos (a b)
            ( if (null a)
                  nil

                 ( if (> b 0)
                    (pos (cdr a) (- b 1))

                    (car a)
                 )
            )
)

(defun ubic (x y)
            ( if (or (null  x) (null y)) nil
              ( cons (pos x (car y)) (ubic x (cdr y)) )
            )
)

(print (ubic '(a b c) '(2 3 1)) )
