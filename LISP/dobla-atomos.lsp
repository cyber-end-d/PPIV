;18) Escribir la funci´on DOBLA-ATOMOS que duplique todos los ´atomos de la lista que toma como
;argumento en el nivel que se encuentre. Por ejemplo, (DOBLA-ATOMOS '((A) B)) ---> ((A A) B B)


(defun dobla-atomos (l)
    (cond ((null l) nil)
        (t (cond ((atom (car l)) (append (list (car l) (car l)) (dobla-atomos (cdr l))))
            (t (cons (dobla-atomos (car l)) (dobla-atomos (cdr l)))
            )
            )
        )
    )
)
(setf l '((a) b c d))
(print (dobla-atomos l))
