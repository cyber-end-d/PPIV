segundo (_:x:_) = Just x
segundo _ = Nothing

segundo2 [] = error "error"
segundo2 (_:xs) = if null xs
                 then error "error"
                 else head xs