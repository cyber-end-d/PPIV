;13) definir la función separa que tome una lista (de los niveles que sea)
;y separe las letras de los números (symbolp / numberp)
;( separa '(a (1 2) ((b)) (c (3))) ) ---> ((a b c) (1 2 3))

(defun separa (xs)
    (cond
        ( (null xs) nil )
        ( (symbolp (car xs))
            (cond
                ( (atom (car xs)) (cons (car xs) (separa (cdr xs))) )
                ( T (cons (car xs) (cons (separa (car xs)) (separa (cdr xs)))) )
            )
        )
        ( T (separa (cdr xs)) )
    )
)

( print ( separa '(a (1 2) ((b)) (c (3))) ) )
