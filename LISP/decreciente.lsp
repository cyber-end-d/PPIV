(defun decrec (x)
    (cond
        ( (> x 0) (cons x (decrec (- x 1))) )
        (T nil)
    )
)

(print (decrec 8))
