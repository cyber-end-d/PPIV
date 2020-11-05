import Data.List

type Nombre = String
type Apellido = String
type Edad = Int

data Persona = Persona {
               nombre:: Nombre
             , apellido :: Apellido
             , edad :: Edad
             } deriving(Show)

ordenar :: [Persona] -> [Persona]

ordenar x = sortBy compararE x
            where compararE (Persona _ _ e1) (Persona _ _ e2) = compare e1 e2
