data Arbol a = Nodo a (Arbol a) (Arbol a)
			| Empty
			  deriving(Show)

--hoja x = Nodo x Empty Empty

--isHoja x (Nodo _ l r) = isHoja x l || isHoja x r
--isHoja x (Nodo y Empty Empty) = x == y
--isHoja _ Empty = False