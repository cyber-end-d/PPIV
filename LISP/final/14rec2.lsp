;14. En una página web se muestra la cartelera de cines de la ciudad
;en una estructura de datos donde para cada cine se sabe:
;- nombre (que sirve al mismo tiempo de identificativo),
;- una lista con los nombres de las salas
;(números o no).
;- qué película se proyecta en cada sala, mediante una lista con las
;películas en el mismo orden que la lista de las salas.
;- horario de proyecciones
;Escribir una función que dada la cartelera de cines y una hora, me
;liste las películas que se proyectan en ese horario, en que cine y en
;qué sala.

(defun pertenece(x y) ;verifica si atomo x pertenece a lista y
    (cond
        ( (null y) nil )
        ( (eq x (car y)) T )
        (T
            (pertenece x (cdr y))
        )
    )
)

(defun inProyeccion (proyecs hora) ;verifica si una hora se encuentra en la lista de proyecciones
    (if (pertenece hora proyecs)
        T
        nil
    )
)

(defun listaSala (sala pelicula proyec h) ;si la pelicula se da a esa hora, arma lista con la sala y la pelicula
    (cond
        ( (null proyec) nil )
        (T
            (if (inProyeccion proyec h)
                ( list (list 'sala sala pelicula) )

                nil
            )
        )
    )
)

(defun listaCine (nombre salas peliculas proyecs h) ;recibe informacion de un cine y crea lista ( (nombre) (salas) (peliculas) (proyecciones) )
        ;( list (list nombre) salas peliculas proyecs )
    (cond
        ( (null peliculas) nil )
        (T
            (append
                (listaSala (car salas) (car peliculas) (car proyecs) h)
                (listaCine  (list nombre)
                            (cdr salas)
                            (cdr peliculas)
                            (cdr proyecs)
                            h
                )
            )
        )
    )
)


(defun horarioPeliculas (cartelera hora) ;toma la cartelera y una hora y devuelve lista que indica que peliculas se dan a esa hora
    ;extrae informacion del primer cine de la cartelera
    ( setq nombre (car (car cartelera)) )
    ( setq salas (cdr (car (cdr (car cartelera)))) )
    ( setq peliculas (cdr (car (cdr (cdr (car cartelera))))) )
    ( setq proyecs (cdr (car (cdr (cdr (cdr (car cartelera)))))) )
    ;(print "Verificando cine: ")
    ;(print nombre) (print salas) (print peliculas) (print proyecs)
    (cond
        ( (null cartelera) nil )
        ( (null hora) nil )
        ( (null nombre) nil )
        ( T
            (append
                (list nombre)
                (listaCine nombre salas peliculas proyecs hora)
                (horarioPeliculas (cdr cartelera) hora)
            )
        )
    )
)

(setq cines
'(
  (  AMBASADOR
    (SALAS A B)
    (PELICULAS (TIBURON) (ESPARTACUS))
    (PROYECCIONES (13 16 19 23) (18 20 23))
  )
  (  BELGRANO
    (SALAS 1 2 3 4 5)
    (PELICULAS (LA MASCARA) (FORREST GUMP)
    (PULP FICTION) (EL PIANO) (EL REY LEON))
    (PROYECCIONES (16 0) (19 23) (23 0)(17 21 0)(15 18))
  )
 )
)

(print (horarioPeliculas cines 23))
