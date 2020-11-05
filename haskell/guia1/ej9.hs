type GetX = Int
type GetY = Int

data Punto = Punto {
		    x :: GetX
		  , y :: GetY
		  } deriving(Show)

data Direction = Izq
			   | Der
			   | Recta
			     deriving(Show)

--https://github.com/huangz1990/real-world-haskell-cn/blob/master/exercise/ch3/exercise9%2C10.hs