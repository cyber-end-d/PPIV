isNewLine c | c == '\n' = True
            | otherwise = False

append c1 c2 = c1 : ( c2 : [] )

transponer s = unlines (zipWith append front (tail back))
    where (front, back) = break isNewLine s
