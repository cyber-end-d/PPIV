;Ejercicio: Definir (MISMA-FORMA E1 E2) que devuelva T o
;NIL, según que las expresiones E1 y E2 tengan o no la misma forma.
;Por ejemplo,

;(MISMA-FORMA '(A (B C)) '(1 (2 3))) ---> T

;(defun checkL (a b)
;    (cond
;        ( (and (null a) (null b)) T )
;        ( (mismaForma a b) (checkL (cdr a) (cdr b)) )
;        ( T nil )
;    )
;)

;(defun mismaForma (x y)
;    (cond
;        ( (and (null x) (null y)) T )
;        ( (and (atom (car x)) (atom (car y))) (mismaForma (cdr x) (cdr y)) )
;        ( (and (listp (car x)) (listp (car y))) (checkL (car x) (car y)) )
;        ( T nil )
;    )

;)

(defun mismaForma (x y)
    (cond
        ( (and (null x) (null y)) T )
        ( (and (atom (car x)) (atom(car y))) (mismaForma (cdr x) (cdr y)) )
        ( ( and (listp (car x)) (listp (car y)) (mismaForma (car x) (car y)) ) ( mismaForma (cdr x) (cdr y) ))
        ( T nil )
    )
)

;(defun mismaForma (E1 E2)
;    (cond
;        ( (and (null E1) (null E2)) T )
;        ( (or (null E1) (null E2)) () )
;        ( (and (atom E1) (atom E2)) T )
;        ( (or (atom E1) (atom E2)) () )
;        ( T ( and (mismaForma (car E1) (car E2)) ( mismaForma (cdr E1) (cdr E2)) ) )
;    )
;)

(print (mismaForma '(a (b c)) '(1 (2 3))))
(print (mismaForma '(a (b (c)) d) '(1 (2 3))))
