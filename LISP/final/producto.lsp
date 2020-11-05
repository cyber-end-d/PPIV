(defun fila (a b)
    (list (apply '+ (mapcar '* (car a) colum1)) (apply '+ (mapcar '* (car a) colum2)))
)

(defun prod (a b)
    (cond
        ((null a) nil)
        ((setf result (cons (fila a b) (prod (cdr a) (cdr b)))))
    )
)

(setf a '((1 2 3) (4 5 6)))
(setf b '((2 2)(3 3)(4 4)))
(setf colum1 (list (caar b)(caadr b) (caaddr b)))
(setf colum2 (list (caar b)(caadr b) (caaddr b)))
(print(prod a b ))
