(defun sumaMat (a b)
    (cond
        ((or (null a) (null b)) nil)
        ((cons (mapcar '+ (car a) (car b)) (sumaMat (cdr a)(cdr b))))
    )
)

(print (sumaMat '((1 2 3) (4 5 6)) '((7 8 9)(3 2 1)) ))
