;14. En una página web se muestra la cartelera de cines de la ciudad
;en una estructura de datos donde para cada cine se sabe:
;- nombre (que sirve al mismo tiempo de identificativo),
;- una lista con los nombres de las salas (números o no).
;- qué película se proyecta en cada sala, mediante una lista con las
;películas en el mismo orden que la lista de las salas.
;- horario de proyecciones
;Escribir una función que dada la cartelera de cines y una hora, me
;liste las películas que se proyectan en ese horario, en que cine y en qué sala.

(defun pertenece (x y) ;me dice si x pertenece a lista y
    (cond
        ( (null y) nil )
        ( (eq x (car y)) T )
        (T
            (pertenece x (cdr y))
        )
    )
)

(defun inProyeccion (proyecs hora) ;si hora esta en esa proyeccion devuelve T otherwise nil
    (cond
        ( (pertenece hora proyecs) T )
        (T nil)
    )
)

(defun listaSala (sala pelicula proyecs hora) ;agrega a la lista sala y pelicula si se proyecta a esa hora
    (cond
        ( (null sala) nil )
        ( (null pelicula) nil )
        (T
            (cond
                ( (inProyeccion proyecs hora) (list 'sala sala pelicula) )
                (T nil)
            )
        )
    )
)

(defun listaCine (salas peliculas proyecs hora) ;devuelve lista de salas que dan pelicula a esa hroa de un cine
        (cond
            ( (null salas) nil )
            ( (null peliculas) nil )
            (T
                (append
                    (listaSala (car salas) (car peliculas) (car proyecs) hora) ;le manda la primer sala/pelicula en la lista
                    (listaCine (cdr salas) (cdr peliculas) (cdr proyecs) hora)
                )
            )
        )
)

(defun horarioPeliculas (cartelera hora)
    (setq nombre (car (car cartelera)))
    (setq salas (cdr (car (cdr (car cartelera)))))
    (setq peliculas (cdr (car (cdr (cdr (car cartelera))))))
    (setq proyecs (cdr (car (cdr (cdr (cdr (car cartelera)))))))
    ;(print "cine: ")(print nombre)(print salas)(print peliculas)(print proyecs)

    (cond
        ( (null nombre) nil )
        ( (null peliculas) nil )
        (T
            (append
                (list nombre)
                (listaCine salas peliculas proyecs hora) ;funcion que de lista de peliculas a esa hora por cine
                (horarioPeliculas (cdr cartelera) hora ) ;recursividad
            )
        )
    )
)

(horarioPeliculas cines 23)

(setq cines
'(
    (AMBASADOR
    (SALAS A B)
    (PELICULAS (TIBURON) (ESPARTACUS))
    (PROYECCIONES (13 16 19 23) (18 20 23))
    )

    (BELGRANO
    (PELICULAS (LA MASCARA) (FORREST GUMP)
    (PULP FICTION) (EL PIANO) (EL REY LEON))
    (SALAS 1 2 3 4 5)
    (PROYECCIONES (16 0) (19 23) (23 0)(17 21 0)(15 18))
    )
 )
)


