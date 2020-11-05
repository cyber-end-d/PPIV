;13. Escribir una función que, dada una lista de nombres de funciones y una lista
;donde cada elemento es una lista de argumentos para cada una de esas funciones
;devuelva una lista de los resultados de aplicar cada función a sus argumentos. Se
;asume que el orden de cada función corresponde con el de sus argumentos y que no
;hay más funciones que listas de argumentos o viceversa. Por ejemplo:
;(ejecuta-lista '(reverse append cons first) ''(((A B C)) ((A) (B)) (A NIL) ((A B C))))
;((C B A) (A B) (A) A )

(defun funRev (arg)
    (print (reverse arg))
)

(defun funApp (arg)
    (print (append (car arg) (car (cdr arg))))
)

(defun funCon (arg)
    (print (cons (car arg) (car (cdr arg))))
)

(defun funFir (arg)
    (print (first arg))
)

(defun aplicarFuncion (fun args)
    (cond
        ( (null fun) nil )
        ( (eq fun 'reverse) (funRev args) )
        ( (eq fun 'append) (funApp args) )
        ( (eq fun 'cons) (funCon args) )
        ( (eq fun 'first) (funFir args) )
        (T (print "Funcion desconocida"))
    )
)

(defun ejecuta-lista (funs args)
    (setq len (length funs))
    (cond
        ( (null funs) args )
        ( (null args) nil )
        ( (eq (length funs) (- (length args) 1)) (print "Se debe ingresar la misma cantidad de funciones y argumentos") )
        ( T
            (do ( (cont 1 (1+ cont)) )

                ( (> cont len) nil)

                (aplicarFuncion (car funs) (car args))
                (ejecuta-lista (cdr funs) (cdr args))
            )
        )
    )
)

(ejecuta-lista '(reverse append cons first) '((A B C) ((A) (B)) (A NIL) (A B C)))
