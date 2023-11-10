main = do 
  putStrLn "exec01 - Testar se um elemento é membro de uma lista"
  putStrLn "exec02 - Calcular o tamanho de uma lista"
  putStrLn "exec03 - Calcular a soma dos elementos de uma lista"
  putStrLn "exec04 - Calcular o produto dos elementos de uma lista"
  putStrLn "exec05 - Reversão de lista"
  putStrLn "exec06 - Testar se duas listas são iguais"
  putStrLn "exec07 - Concatenação de duas listas"
  putStrLn "exec08 - Interseção de duas listas"

exec01 = do
  putStrLn "Testar se um elemento é membro de uma lista"


exec02 = do 
  putStrLn "Calcular o tamanho de uma lista"

exec03 :: IO ()
exec03 = do 
  putStrLn "Calcular a soma dos elementos de uma lista"

  putStrLn "Digite a lista (separada por espaços):"
  input <- getLine
  let lista = map read (words input) :: [Double]

  putStr "Resultado: "
  print (sum lista)

exec04 :: IO ()
exec04 = do
  putStrLn "Calcular o produto dos elementos de uma lista"

  putStrLn "Digite a lista (separada por espaços):"
  input <- getLine
  let lista = map read (words input) :: [Double]

  putStr "Resultado: "
  print (product lista)

exec05 = do
  putStrLn "Reversão de lista"

  putStrLn "Digite a lista"
  lista <- getLine
  
  putStr "Resultado: "
  print (reverse lista)

exec06 = do
  putStrLn "Testar se duas listas são iguais"

  putStrLn "Digite a primeira lista"
  lista1 <- getLine

  putStrLn "Digite a segunda lista"
  lista2 <- getLine
  
  putStr "Resultado: "
  print (lista1 == lista2)

exec07 = do
  putStrLn "Concatenação de duas listas"

  putStrLn "Digite a primeira lista"
  lista1 <- getLine

  putStrLn "Digite a segunda lista"
  lista2 <- getLine

  putStr "Resultado: "
  print (lista1 ++ lista2)

exec08 = do
  putStrLn "Interseção de duas listas"
