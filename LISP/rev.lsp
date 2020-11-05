;10)  Definir la función REV que actúe como REVERSE pero a todos los niveles.
;Por ejemplo,  (REV '(A (B C) (D (E)))) ---> (((E) D) (C B) A)
(defun init (x)
    (cond
        ( (null x) nil )
        (T (cond
                ( (> (length x) 1) (cons (car x) (init (cdr x))) )
           )
        )
    )
)

(defun ultimo (x)
    (cond
        ( (null x) nil )
        (T (cond
                ( (> (length x) 1) (ultimo (cdr x)) )
                (T (car x)
                )
           )
        )
    )
)


(defun rev (x)
    (cond
        ( (null x) nil )
        (T (cond
                ( (atom (ultimo x)) (cons (ultimo x) (rev (init x))) )
                (T (cons (rev (ultimo x)) (rev (init x)))
                )
           )
        )
    )
)

( print (rev '(A (B C) (D (E)))) )

