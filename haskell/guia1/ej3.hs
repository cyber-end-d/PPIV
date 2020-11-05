media (x : xs) = (fromIntegral x + media xs) / fromIntegral(length(xs)+1)
media [] = 0