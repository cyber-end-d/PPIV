(defun pertenece (x l)
    (cond
    ((null l) 0 )
    ((eq x (CAR l)) 1  )
    (t (pertenece x (cdr l)))
    )
)


(setf l '(1 2 3 4 5))
(print (pertenece 2 l) )

(defun intersec (x y)
    (cond ((null x) nil)((null y) nil)
        (t (
            cond ((eq (pertenece (car x) y) 1 ) (cons (car x) (intersec (cdr x) y)))
                (t (intersec (cdr x) y)
                )
           )
        )

    )
)

(defun vocales(x)
    (setf v '(A E I O U))
    (cond ((null x) nil)
    (t (intersec v x))

    )


)

(setf l'(m e t o d o d e c i f r a d o e s e l d e e s c r i b i r n a p a l a b r a a l  r e v e s ( d e a t r a s  h a c i a d e l a n t e )) )
(print (vocales l))
