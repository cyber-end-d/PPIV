nodoEqual (Nodo a _ _) (Nodo b _ _)
    | a == b = Just a
nodoEqual _ _ = Nothing
