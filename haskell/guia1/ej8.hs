data Arbol a = Nodo a (Arbol a) (Arbol a)
			| Empty
			  deriving(Show)

hoja x = Nodo x Empty Empty

height Empty = 0
height (Nodo _ l r) = 1 + (max (height l) (height r))