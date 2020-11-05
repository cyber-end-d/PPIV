--ya que menciona que la impresi�n es distinta pero no especifica c�mo,
--invento un poco, teniendo una idea de c�mo son las facturas

type Resp1 = String
type Resp2 = String
type Iva = Float
type Total = Float
type Emisor = String

data Factura = A Resp1 Resp2 Iva Total
             | B Resp1 Total
             | C Emisor Total
               deriving(Show)

imprimir (A r1 r2 i t) = "Factura A - " ++ "Responsable emisor: " ++ r1 ++ " Responsable cliente: " ++ r2 ++ " IVA: " ++
                                 show i ++ " Total: " ++ show t

imprimir (B r1 t) = "Factura B - " ++ "Responsable emisor: " ++ r1 ++ " Consumidor final " ++ " Total: " ++ show t

imprimir (C e t) = "Factura C - " ++ "Emisor: " ++ e ++ " Total: " ++ show t

imprimirL :: [Factura] -> [[Char]]

imprimirL x = map imprimir x
