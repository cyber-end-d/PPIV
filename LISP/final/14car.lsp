(defun pos (a b)
            (if (null a) nil
                 (if (> b 0) (pos (cdr a) (- b 1))
                         (car a)
                 )
             )
)
(setf a '(A (B) C))


;BUSCAR
(defun buscar (x l)
    (cond
        ((null l) nil)
        ((eq x (CAR l)) T)
        (t (buscar x (cdr l)))
    )
)

(defun mascara(l h)
    (cond
        ((null l) nil)
        ((if (eq (buscar h (car l)) T)
             (cons 1 (mascara (cdr l) h))
             (cons 0 (mascara (cdr l) h))
         )
        )
    )
)

(defun verMascara (l h) ;recibe un cine
    (setf horarios (cdar(cdddr l)))
    (setf masc (mascara horarios h))
    (setf sala (cdr (car  (cdr l))))
    (setf titulo (cdr (car (cdr (cdr l)))))
    (setf c '0)
    (print masc)
    (print (pos titulo 0))
    (print (length l))
    (construir l masc c)


)

(defun construir (l masc c)
    (setf sucursal (list(car l)))
    (setf sala (cdr (car  (cdr l))))
    (setf titulo (cdr (car (cdr (cdr l)))))
    (cond
        ((null l) nil)
        ((eq (length masc) c) nil)
        ((eq (car masc) 1) (cons (cons(pos sala c) (pos titulo c)) (construir l masc (+ c 1))))
        (t(construir (cdr l) masc (+ c 1)))
    )
)



(defun horarioPeliculas (cines hora)
    (cond
        ((null cines) nil)
        (t (cons (cons
                    (car (car cines))
                    (verMascara (car cines) hora)
                 )
                 (horarioPeliculas (cdr cines) hora)
            )
        )
    )
)

(print (horarioPeliculas cines 23))
