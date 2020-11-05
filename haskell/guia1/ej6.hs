import Data.List

ordenarXs :: [[a]] -> [[a]]

ordenarXs xs =  sortBy compararL xs
				where compararL y z = compare (length y) (length z)