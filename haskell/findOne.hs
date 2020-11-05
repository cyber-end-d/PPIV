findOne x lista = if null lista == True
    then "El elemento no esta presente"
	else if (head lista) == x
        then "El elemento se encuentra presente"
        else findOne x (tail lista) --o puedo usar drop 1 lista