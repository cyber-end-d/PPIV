splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in pre : case suf of --construye lista pre:<result del case>
                 ('\r':'\n':rest) -> splitLines rest
                 ('\r':rest) -> splitLines rest
                 ('\n':rest) -> splitLines rest
                  _ -> []

isLineTerminator c = c == '\r' || c == '\n'
