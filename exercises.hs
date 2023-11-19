{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use infix" #-}

main = do
  putStrLn "exec01 - Testar se um elemento é membro de uma lista"
  putStrLn "exec02 - Calcular o tamanho de uma lista"
  putStrLn "exec03 - Calcular a soma dos elementos de uma lista"
  putStrLn "exec04 - Calcular o produto dos elementos de uma lista"
  putStrLn "exec05 - Reversão de lista"
  putStrLn "exec06 - Testar se duas listas são iguais"
  putStrLn "exec07 - Concatenação de duas listas"
  putStrLn "exec08 - Intersecção de duas listas"

-- ==================== GUSTAVO ========================
searchElem :: Int -> [Int] -> Bool
searchElem x myList
    | null myList = False
    | head myList == x = True
    | otherwise = searchElem x (tail myList)

exec01 = do
  putStrLn "Testar se um elemento é membro de uma lista"
  putStrLn "Informe uma lista de números separados por espaço:"
  input <- getLine
  let list = map read (words input) :: [Int]
  putStrLn "Informe o número a ser pesquisado na lista:"
  input2 <- getLine
  let number = read input2 :: Int
  putStrLn ("O número" ++ show number ++ " está na lista? " ++ show (searchElem number list))



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
sumList :: [Int] -> Int
sumList myList
  | null myList = 0
  | otherwise = head myList + sumList (tail myList)

exec03 = do
  putStrLn "Calcular a soma dos elementos de uma lista"
  putStrLn "Informe uma lista de números separados por espaço:"
  input <- getLine
  let list = map read (words input) :: [Int]
  putStrLn ("Soma: " ++ show (sumList list))



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
reverseList :: [Int] -> [Int]
reverseList myList
    | null myList = []
    | otherwise = reverseList (tail myList) ++ [head myList]

exec05 = do
  putStrLn "Invertendo uma lista"
  putStrLn "Informe uma lista de números separados por espaço:"
  input <- getLine
  let list = map read (words input) :: [Int]
  putStrLn ("Invertida: " ++ show (reverseList list))



-- ==================== IAGO ========================
myIsListEqual :: [Int] -> [Int] -> Bool
myIsListEqual [] [] = True
myIsListEqual [] _ = False
myIsListEqual _ [] = False
myIsListEqual (x:xs) (y:ys) = x == y && myIsListEqual xs ys

exec06 = do
  putStrLn "Testar se duas listas são iguais"
  putStrLn "Informe uma lista de números separados por espaço"
  input1 <- getLine
  let list1 = map read (words input1) :: [Int]
  putStrLn "Informe outra lista de números separados por espaço"
  input2 <- getLine
  let list2 = map read (words input2) :: [Int]
  putStrLn ("As listas são iguais? " ++ show (myIsListEqual list1 list2))



-- ==================== GUSTAVO ========================
exec07 = do
  putStrLn "Concatenação de duas listas"



-- ==================== IAGO ========================
myIntercectionList :: [Int] -> [Int] -> [Int]
myIntercectionList [] _ = []
myIntercectionList _ [] = []
myIntercectionList (x:xs) ys
  | searchElem x ys = x : myIntercectionList xs ys
  | otherwise = myIntercectionList xs ys

exec08 = do
  putStrLn "Intersecção de duas listas"
  putStrLn "Informe uma lista de números separados por espaço"
  input1 <- getLine
  let list1 = map read (words input1) :: [Int]
  putStrLn "Informe outra lista de números separados por espaço"
  input2 <- getLine
  let list2 = map read (words input2) :: [Int]
  putStrLn ("Intersecção: " ++ show (myIntercectionList list1 list2))
