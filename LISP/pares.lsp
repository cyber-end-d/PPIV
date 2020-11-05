(defun pares (x)
    (cond ( (null x) nil )
        (T
            ( cons (car x) (pares (cdr (cdr x)))) )
    )
)

(setf l '(a b c d e f))
(print (pares l))
