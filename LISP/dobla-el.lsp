;17) Escribir la función DOBLA-EL que duplique todos los elementos de la lista que toma por argumento.
;Por ejemplo, (DOBLA-EL '(A B)) ---> (A A B B) (DOBLA-EL '((A) B)) ---> ((A) (A) B B)

(defun dobla-el (l)
    (cond ((null l) nil)
        (t (append (list (car l) (car l)) (dobla-el (cdr l)))
        )
    )

)
(setf l '((a) b c d))
(print (dobla-el l))
