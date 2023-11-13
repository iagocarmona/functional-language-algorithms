{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

main = do
  putStrLn "exec01 - Testar se um elemento é membro de uma lista"
  putStrLn "exec02 - Calcular o tamanho de uma lista"
  putStrLn "exec03 - Calcular a soma dos elementos de uma lista"
  putStrLn "exec04 - Calcular o produto dos elementos de uma lista"
  putStrLn "exec05 - Reversão de lista"
  putStrLn "exec06 - Testar se duas listas são iguais"
  putStrLn "exec07 - Concatenação de duas listas"
  putStrLn "exec08 - Interseção de duas listas"

-- ==================== GUSTAVO ========================
exec01 = do
  putStrLn "Testar se um elemento é membro de uma lista"



-- ==================== IAGO ========================
myLengthList :: [Int] -> Int
myLengthList [] = 0
myLengthList (x:xs) = 1 + myLengthList xs

exec02 = do
  putStrLn "Calcular o tamanho de uma lista"
  putStrLn "Informe uma lista de números separados por espaço"
  input <- getLine
  let list = map read (words input) :: [Int]
  putStrLn ("Tamanho: " ++ show (myLengthList list))



-- ==================== GUSTAVO ========================
exec03 = do
  putStrLn "Calcular a soma dos elementos de uma lista"



-- ==================== IAGO ========================
myProdList :: [Int] -> Int
myProdList [] = 1
myProdList (x:xs) = x * myProdList xs

exec04 = do
  putStrLn "Calcular o produto dos elementos de uma lista"
  putStrLn "Informe uma lista de números separados por espaço"
  input <- getLine
  let list = map read (words input) :: [Int]
  putStrLn ("Produto: " ++ show (myProdList list))


-- ==================== GUSTAVO ========================
exec05 = do
  putStrLn "Reversão de lista"



-- ==================== IAGO ========================
exec06 = do
  putStrLn "Testar se duas listas são iguais"



-- ==================== GUSTAVO ========================
exec07 = do
  putStrLn "Concatenação de duas listas"



-- ==================== IAGO ========================
exec08 = do
  putStrLn "Interseção de duas listas"
