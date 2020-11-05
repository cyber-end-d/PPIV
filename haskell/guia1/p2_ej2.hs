splitWith :: (a -> Bool) -> [a] -> [[a]]

splitWith _ [] = []
splitWith pred xs = [(takeWhile pred xs)] ++ (splitWith pred rest)
    where rest
              | null finLista = []
              | otherwise = tail finLista
              where finLista = dropWhile pred xs
