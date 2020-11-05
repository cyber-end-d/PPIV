;4) Definir una funcion que eleve al cuadrado los elementos de la lista utilizando la funcion LAMBDA y MAPCAR
(defun cuadrado (l)
(mapcar #'(lambda (n) (* n n)) l)
)
 (setf h '(1 2 4 5))

(print (cuadrado h))
