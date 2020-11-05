(defun INTERC ( U W )
 (cond
  ( (atom u) w)
  ( (atom w) u)
  (( < (car u) (car w)) ( cons (car u) (INTERC (cdr u) w) ))
  ( T ( cons (car w) ( INTERC (cdr w) u)))
 )
)



(defun ordenar (x)

        (cond ((null x) nil) ((atom x) (cons x nil))
         (T (INTERC  (ordenar ( car x)) (ordenar ( cdr x ) ))
         )
        )
)

(setf l '(4 15 30 17))
(setf h '(22 2 1 6))

(print (INTERC l h) )


(print (ordenar (INTERC l h)) )
