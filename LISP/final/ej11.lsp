;Una función que aplicada a dos matrices, con las dimensiones adecuadas, devuelva:
;a. la suma de las dos matrices
;b.    el producto
;a. (sumaMat '((1 2 3) (4 5 6)) '((7 8 9)(3 2 1)) ) ----> ((8 10 12) (7 7 7))
;b. (prod '((1 2 3) (4 5 6)) '((2 2)(3 3)(4 4)) ) ----> ((20 20) (47 47))

(defun sumaMat (x y)
    (setq len (length x))
    (setq result nil)
    (cond
        ( (null x) nil )
        ( (null y) nil )
        ( (not (eq (length y) len)) (print "Las matrices deben tener la misma dimensión") )
        ( T
            ( do ( (cont 1 (1+ cont)) )
                 ( (> cont len) result )

                 ( setq result (append result (list (mapcar '+ (car x) (car y)))) )
                 ( setq x (cdr x) )
                 ( setq y (cdr y) )
            )
        )
    )
)



(print (sumaMat '((1 2 3) (4 5 6)) '((7 8 9) (3 2 1)) ))
