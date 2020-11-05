import System.Environment (getArgs)

--La keyword do introduce un bloque de acciones
--que pueden causar efectos exteriores,
--como leer o escribir en un archivo

interactWith function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)

main = mainWith myFunction
    where mainWith function = do
              args <- getArgs
              case args of
                   [input,output] -> interactWith function input output
                   _ -> putStrLn "error: se necesitan dos argumentos"

--reemplazar "id" por el nombre de la funcion a probar
myFunction = fixLines

fixLines input = unlines (splitLines input)

splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in pre : case suf of --construye lista pre:<result del case>
                 ('\r':'\n':rest) -> splitLines rest
                 ('\r':rest) -> splitLines rest
                 ('\n':rest) -> splitLines rest
                 _ -> []

isLineTerminator c = c == '\r' || c == '\n'


