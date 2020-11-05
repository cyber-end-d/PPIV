type BookId = Int
type Name = String
type Authors = [String]

data BookInfo = Book BookId Name Authors
                deriving (Show)

type Calificacion = Int
type Critico = String

data BookReview = BookReview BookInfo Calificacion Critico
                  deriving (Show)

type Color = String

data Animal = Perro
            | Gato Color
			| Oso
			deriving (Show)

type NroTarjeta = Int

data BillingInfo = Tarjeta NroTarjeta
                 | Cash
                   deriving (Show)
				  
data Arbol = Arbol String
             deriving (Show)

data Animal2 = Animal2 String
               deriving (Show)