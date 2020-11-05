;5) Una función que aplicada a una lista de n niveles con átomos numéricos, devuelva la misma lista
;donde cada elemento quede incrementado en 1. Ej. ( ( 2 (3 4)) 4 (((5) 6) 7) ) ------> ( (3 (4 5)) 5 (((6) 7) 8))

(defun increm (x)
    (cond ( (null x) nil )
          ( (listp (car x)) (cons (increm (car x))(increm (cdr x))) )
          (T (cons (+ (car x) 1) (increm (cdr x)))
          )
    )

)

(setf l '(0 2 (2 (3 6) 4) 3 5 9 3 1 2))
(setf h '(( 2 (3 4)) 4 (((5) 6) 7)))
(print (increm l))
(print (increm h))

