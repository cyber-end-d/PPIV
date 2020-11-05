type Precio = Float
type Stock = Int

data Producto = Producto {
                precio :: Precio
              , stock :: Stock
              } deriving(Show)

mayorStock (Producto _ s1) (Producto _ s2)
    | s1 == s2 = Just s2
    | s1 < s2 = Just s2
    | s1 > s2 = Just s1
    | otherwise = Nothing
