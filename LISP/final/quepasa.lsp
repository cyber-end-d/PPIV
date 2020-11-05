;14. En una página web se muestra la cartelera de cines de la ciudad
;en una estructura de datos donde para cada cine se sabe:
    ;- nombre (que sirve al mismo tiempo de identificativo),
    ;- una lista con los nombres de las salas (números o no).
    ;- qué película se proyecta en cada sala, mediante una lista con las
      ;películas en el mismo orden que la lista de las salas.
    ;- horario de proyecciones
;Escribir una función que dada la cartelera de cines y una hora, me
;liste las películas que se proyectan en ese horario, en que cine y en
;qué sala.
;(AMBASADOR (SALAS A B) (PELICULAS (TIBURON) (ESPARTACUS)) (PROYECCIONES (13 16 19 23) (18 20 23)))
(defun peliculaHora (c h) ;recibe ( (salas) (peliculas) (proyecciones) ) y horario que se busca, devuelve lista ( (sala) (pelicula))
    ;getters
    (setq sala (car c))
    (setq pelicula (car (cdr c)))
    (setq proyecciones (car (cdr (cdr c))))
    (print "peliculaHora: ")
    (print sala)(print pelicula)(print proyecciones)
    (print "fin peliculaHora")

    (cond
        ( (null proyecciones) nil ) ;proyecciones not null
        (T
            (cond
                ( (eq (car h) (car proyecciones)) ;compara si es el horario que esta buscando
                        (list ( append
                                    (cons sala pelicula)
                                    ( peliculaHora (list sala pelicula (cdr proyecciones)) h )
                              )
                              ;si el horario coincide, agrega a la lista ( (sala) (pelicula) ) y recursividad al siguiente horario
                        )
                )

                (T
                    ;si no es el horario, recursividad pasando el resto de horarios (cdr)
                    (peliculaHora (list sala pelicula (cdr proyecciones)) h)
                )
            )
        )
    )
)


(defun horarioPorCine (c h) ;recibe un cine y un horario, devuelve lista ((sala) (pelicula)) de ese cine con ese horario
    ;getters
    (setq nombre (car (car c)))
    (setq salas (car (cdr c)))
    (setq peliculas (car (cdr (cdr c))))
    (setq proyecciones (car (cdr (cdr (cdr c)))))
    ;(print "horarioPorCine: ")
    ;(print nombre) (print salas) (print peliculas)(print proyecciones)
    ;(print "fin horarioPorCine")

    (cond
        ( (null peliculas) nil ) ;peliculas not null
        (T
            ( append
                ;lista ((sala) (pelicula)) que coincide con el horario
                (peliculaHora (list (car salas) (car peliculas) (car proyecciones)) h)
                ;recursividad con la siguiente sala
                (horarioPorCine (list (list nombre) (cdr salas) (cdr peliculas) (cdr proyecciones)) h)
            )
        )
    )
)

(defun getters (c) ;recibe toda la cartelera y devuelve datos del primer cine, sin los marcadores
    (setq nombre (car (car c)))
    (setq salas (cdr (car (cdr (car c)))))
    (setq peliculas (cdr (car (cdr (cdr (car c))))))
    (setq proyecciones (cdr (car (cdr (cdr (cdr (car c)))))))

    (list (list nombre) salas peliculas proyecciones)
    ;bien
)


(defun horarioPeliculas (c h) ;recibe toda la cartelera y devuelve lista ( (nombre (sala) (pelicula)) ) que tienen ese horario
        (setq cine (getters c)) ;lista con todos los datos sin los marcadores ("sala", "pelicula", etc)
        (print "horarioPeliculas: ") (print cine)(print "fin horarioPeliculas")
        (cond
                ( (null c) nil ) ;cine not null
                (T
                    (cons (append
                            (car cine) ;nombre del cine
                            (horarioPorCine cine h)
                          );lista ( (sala) (pelicula) ) con los que cumplen ese horario
                          (horarioPeliculas (cdr c) h) ;recursividad, pasa al siguiente cine de la cartelera
                    )
                )
        )
)

(setq cines
'(
    (AMBASADOR
    (SALAS A B)
    (PELICULAS (TIBURON) (ESPARTACUS))
    (PROYECCIONES (13 16 19 23) (18 20 23))
    )

    (BELGRANO
    (SALAS 1 2 3 4 5)
    (PELICULAS (LA MASCARA) (FORREST GUMP)
    (PULP FICTION) (EL PIANO) (EL REY LEON))
    (PROYECCIONES (16 0) (19 23) (23 0)(17 21 0)(15 18))
    )
 )
)

(print (horarioPeliculas cines '(23)))
