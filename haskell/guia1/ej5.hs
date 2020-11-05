isPalindromo [] = True
isPalindromo [_] = True
isPalindromo xs = let largo = length xs - 1
				  in
				    (head xs == last xs) && (isPalindromo (tail (take largo xs)))