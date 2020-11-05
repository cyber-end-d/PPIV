type Precio = Float
type Stock = Int

data Producto = Producto {
                precio :: Precio
              , stock :: Stock
              } deriving(Show)

mayorPrecio (Producto p1 s1) (Producto p2 s2)
    | p1 == p2 = Nothing
    | p1 < p2 = Just s2
    | p1 > p2 = Just s1
    | otherwise = Nothing

