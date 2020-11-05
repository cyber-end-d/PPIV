(defun esPar (x)
    (cond
        ( (null x) nil )
        ( T (if ( eq (mod (car x) 2) 0 ) ; es par (mod car 2)=0
                ( cons (car x) (esPar (cdr x)) )

                ( esPar (cdr x) )
            )
        )
    )
)

( print (esPar '(1 2 3 4 5 6)) )
