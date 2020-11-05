type Precio = Float
type Stock = Int
type StockMin = Int

data Producto = Producto {
                precio :: Precio
              , stock :: Stock
              , stockMin :: StockMin
              } deriving(Show)

checkStock (Producto _ s sm)
    | s >= sm = True
    | otherwise = False

checkStockL :: [Producto] -> [Bool]

checkStockL x = map checkStock x

