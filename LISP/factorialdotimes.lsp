;3. Al igual que el punto anterior definir la funcion factorial pero utilizando DOTIMES

(defun factorial(x)
        (setf result '1)
        (dotimes (cont n result) (setf result  (* result (1+ cont)))
        )
)
(setf n '5)
(print (factorial n))
