randomList :: Int -> [Int]
randomList n = [((n * n + 1) `mod` 1000) * 3 | n <- [1..n]]

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

-- myLengthList :: [Int] -> Int
-- myLengthList = foldr (\ x -> (+) 1) 0

main = do
    putStrLn "Gerando lista de 100000 numeros aleatorios..."
    let list = randomList 100000
    -- putStrLn ("Tamanho: " ++ show (myLengthList list))
    putStrLn "Ordenando lista..."
    let sortedList = quicksort list
    putStrLn "Lista ordenada!"