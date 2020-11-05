;Datos 1 -  appelido materias cursa
;Apellido: Mastroianni
;Materias Cursa  Matematica Ingles
;Apellido: Rosello
;Materia cursa:  Matematica

;Datos 2 - materia dia horario
;La materia Matematica
;lunes de 10 a 12
;martes de 8 a 10

;a)  se quiere poder encontrar a cada alumno pedido con sus materias y horarios
; Ejemplo     Mastroianni: Matematica lunes de 8 a 10   Ingles Lunes 10 a 12
;                    Rosello: Matematica Martes de 10 a 12

;(setq alumnos '((Matroianni Matematica Ingles) (Rosello Matematica)) )
;(setq materias '( ((Matematica) (Lunes 10 12) (Martes 8 10)) ((Ingles) (Lunes 8 11) (Miercoles 9 12)) ) )
;b) por materia los alumnos inscriptos
;Ejemplo       Matematica: Mastroianni  Rosello


(setq listaAlumnos '( (Matroianni (Matematica Ingles) ((Lunes 10 12) (Martes 9 10))) (Rosello (Matematica) ((Martes 10 12)))))

;-----------------------B
(defun pertenece(x y) ;T si pertenece x a lista y, otherwise nil
    (cond
        ((null y) nil)
        ((eq x (car y)) T)
        (T
            (pertenece x (cdr y))
        )
    )
)

(defun getAlumnos (materia lista) ; recibe materia y lista alumnos y devuelve lista de alumnos en la materia
    (setq alumno (car lista)) ;toma un alumno de listaAlumnos
    (setq mats (cadr alumno)) ;toma materias para ese alumno
    (cond
        ( (null materia) nil )
        ( T
            (if (pertenece materia mats) ;verifica si materia esta en la lista de materias de ese alumno
                (append
                    (list (car alumno)) ;agrega nombre del alumno actual a la lista
                    (getAlumnos materia (cdr lista)) ;recursividad siguiente alumno listaAlumnos
                )
            )
        )
    )
)

(print (getAlumnos 'Ingles listaAlumnos))
(print (getAlumnos 'Matematica listaAlumnos))

;------------------A
(defun listaAlumno (a)  ;recibe un alumno y construye lista ( alumno (materia1 hora) (materia2 hora) )
    (setq cant (length (cadr a))) ;cuantas materias cursa el alumno
    (setq result (list (car a))) ;agrega a result el nombre del alumno
    (setq materias (cadr a))
    (setq horarios (caddr a))
    (do ( (contador 1 (1+ contador))
          (mats materias (cdr mats))
          (hors horarios (cdr hors))
        )
        ( (> contador cant) result ) ;pasa por todas las materias que cursa
        ( setq result (append result
                        (list (car mats))
                        (car hors) ;agrega a la lista materia y horarios en los que la cursa
                      )
        )
    )
)

(defun isAlumno (a1 a2) ;compara nombre del alumno con nombre de la lista
    (if (eq a1 (car a2))
        T
        nil
    )
)

(defun materiasAlumno (a lista) ;toma lista con nombres de alumnos a consultar y la lista de alumnos
    (setq alumno (car lista)) ;toma primer alumno en la lista
    (cond
        ( (null a) nil )
        ( (null lista) nil )
        ( (isAlumno (car a) alumno) ;si es el alumno que se pidio en la lista
                (list (append
                    (listaAlumno alumno) ;agrega lista ( alumno (materia1 hora) (materia2 hora))
                    (materiasAlumno (cdr a) lista) ;recursividad, pasa al siguiente alumno
                ))
        )
        (T ;no es el alumno que se pidio
            (materiasAlumno a (cdr lista)) ;recursividad, sigue buscando en la lista
        )
    )
)

(print (materiasAlumno '(Mastroianni Rosello) listaAlumnos))
