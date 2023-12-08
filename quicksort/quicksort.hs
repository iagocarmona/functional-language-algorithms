import System.Random
import Data.List
import Criterion.Main
import Control.DeepSeq
import Control.Monad

randomList :: Int -> [Int]
randomList n = [((n * n + 1) `mod` 1000) * 3 | n <- [1..n]]

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

-- Função auxiliar para avaliar completamente a expressão
forceEvaluation :: a -> ()
forceEvaluation x = x `seq` ()

-- myLengthList :: [Int] -> Int
-- myLengthList = foldr (\ x -> (+) 1) 0

main = do
    putStrLn "Gerando lista de 200.000.000 numeros aleatorios..."
    -- let list = randomList 100000
    -- putStrLn ("Tamanho: " ++ show (myLengthList list))
    gen <- newStdGen
    let random_list = take 200000000 (randomRs (1, 1000000) gen :: [Int])
    writeFile "array.txt" (intercalate "\n" (map show random_list))
    
    
    putStrLn "Ordenando lista e iniciando benchmark..."
    
    defaultMain
        [ bench "quicksort" $ nf (force . deepseq ()) (replicateM_ 10 (quicksort random_list))
        ]
        -- [ bench "quicksort" $ nf forceEvaluation (quicksort random_list) ]

    -- let arr_sorted = force (deepseq () (quicksort random_list))
    
    putStrLn "Lista ordenada e benchmark finalizado!"