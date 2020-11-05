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
myFunction = firstWordL

firstWord xs = head (words xs)

firstWordA [] = ""
firstWordA (x:xs) = (firstWord x) ++ " " ++ (firstWordA xs)

firstWordL arch = firstWordA (lines arch)

