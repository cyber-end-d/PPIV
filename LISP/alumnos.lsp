;7) Dada una lista que contiene sublistas con el nombre del alumno y las materias en las cuales está inscripto y una materia,
;escribir una funcion que devuelva una lista con los alumnos que estan inscriptos en la materia dada
(setf lista '( (jose prog_I sist_comp_I) (juan prog_II sist_comp_I seminario) (maria prog_I ingles algebra) (vera seminario prog_I ingles) ) )

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
