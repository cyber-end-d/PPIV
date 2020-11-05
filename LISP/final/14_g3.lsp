(defun peliHora (c hora)
    (setq sala (car c))
    (setq peli (car (cdr c)))
    (setq horario (car(cdr (cdr c))))
    ;(print "peliHora: ")
    ;(print sala)(print peli)(print horario)
    ;(print "fin peliHora")
    (cond
        ( (null horario) nil )
        (T
            (cond
                ( (= (car hora) (car horario))
                    (list (append
                                (cons sala peli)
                                (peliHora (list sala peli (cdr horario)) hora)
                          )
                    )
                )
                (t
                    (peliHora (list sala peli (cdr horario)) hora)
                )
            )
        )
    )
)

(defun listar (c)
        (setq cine (car (car c)))
        (setq salas (cdr (car (cdr (car c)))))
        (setq pelis (cdr (car (cdr (cdr (car c))))))
        (setq horarios (cdr (car (cdr (cdr (cdr (car c)))))))

        (list (list cine) salas pelis horarios)
)

(defun horarioporCine (c h)
        (setq cine (car (car c)))
        (setq salas (car (cdr c)))
        (setq pelis (car (cdr (cdr c))))
        (setq horarios (car (cdr (cdr (cdr c)))))
        ;(print "horarioPorCine: ")
        ;(print cine) (print salas)(print pelis)(print horarios)
        ;(print "fin horarioPorCine")
        (cond
            ( (null pelis) nil )
            (T
                (append
                    (peliHora (list (car salas) (car pelis) (car horarios)) h)
                    (horarioporCine (list (list cine) (cdr salas)(cdr pelis)(cdr horarios)) h)
                )
            )
        )
)

(defun horarioCine (c h)
        (setq cine (listar c))
        ;(print "horarioCine: ")(print cine)(print "fin horarioCine")
        (cond
            ( (null c) nil )
            (t
                (cons (append
                            (car cine)
                            (horarioporCine cine h)
                      )
                      (horarioCine (cdr c) h)
                )
            )
        )
)


(setq cines
'(  (AMBASADOR
    (SALAS A B)
    (PELICULAS (TIBURON) (ESPARTACUS))
    (PROYECCIONES (13 16 19 23) (18 20 23))
    )

    (BELGRANO
    (SALAS 1 2 3 4 5)
    (PELICULAS (LA MASCARA) (FORREST GUMP)
    (PULP FICTION) (EL PIANO) (EL REY LEON))
    (PROYECCIONES (16 0) (19 23) (23 0)(17 21 0)(15 18)    )
    )
 )
)

(print (horarioCine cines '(23)))
