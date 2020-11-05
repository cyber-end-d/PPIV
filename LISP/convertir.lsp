(defun convertir (x)
            (cond
                ( (eq (car (cdr x)) '++) (list (car x) '= (car x) '+ 1) )
                ( (eq (car (cdr x)) '--) (list (car x) '= (car x) '- 1) )
            )
)

( setf h '(a ++) )
( setf m '(a --) )

(print (convertir h) )

(print (convertir m) )
