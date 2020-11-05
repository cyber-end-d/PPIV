(defun tupla (x m)
    (cond
        ((null x) nil)
        ((eq (car(cdr(car x))) (car m)) (cons (car x) (tupla (cdr x) m)))
        (t (tupla (cdr x) m))

    )
)
(setf x '((nombre math) (nombre3 algebra) (nombre2 algebra)))
(setf m '(algebra))
(print (tupla x m))
