type Id = Int
type Titulo = String
type Autores = [String]
type URL = String

data BookInfo = Book Id Titulo Autores
              | EBook Id Titulo Autores URL
                deriving (Show)

imprimir (Book id tituloLibro autores) = "ID: " ++ show id ++ ", " ++
                                         "Titulo: " ++ tituloLibro ++ ", " ++
										 "Cantidad de autores: " ++ show (length autores)

imprimir (EBook id tituloLibro autores url) = "ID: " ++ show id ++ ", " ++
                                         "Titulo: " ++ tituloLibro ++ ", " ++
										 "Cantidad de autores: " ++ show (length autores) ++ ", " ++
										 "URL de descarga: " ++ url