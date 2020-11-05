toPalindromo (x:xs) = if null xs
				then [x]
				else [x] ++ toPalindromo(xs) ++ [x]

--otra forma
--toPalindromo [x] = [x]
--toPalindromo (x:xs) = [x] ++ toPalindromo(xs) ++ [x]
--toPalindromo [] = []
