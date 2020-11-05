safeInit :: [a] -> Maybe [a]

safeInit [] = Nothing
safeInit xs = Just (borrarUlt xs)
   where borrarUlt [x] = []
         borrarUlt (x:xs) = x:(borrarUlt xs)
