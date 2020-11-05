(defun aplicarFx (f arg)
    (setq fx (car f))
    (cond
        ( (null f) nil )
        (T
            (cons
                (apply fx (car arg))
                (aplicarFx (cdr f) (cdr arg))
            )
        )
    )
)

(setf f '(reverse append cons first))
(setf arg '(((A B C)) ((A) (B)) (A NIL) ((A B C))))

(print (aplicarFx f arg))
