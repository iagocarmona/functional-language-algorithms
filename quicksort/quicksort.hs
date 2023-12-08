import System.Random
import Data.List
import Criterion.Main
import Control.DeepSeq
import Control.Exception (evaluate)

randomList :: Int -> [Int]
randomList n = [((n * n + 1) `mod` 1000) * 3 | n <- [1..n]]

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

main :: IO ()
main = do
    putStrLn "Gerando lista de números aleatórios..."
    gen <- newStdGen
    let random_list = take 90000 (randomRs (1, 100) gen :: [Int])
    writeFile "array_10s.txt" (intercalate "\n" (map show random_list))

    putStrLn "Ordenando lista e iniciando benchmark..."

    defaultMain
        [ bench "quicksort" $ nf quicksort random_list
        ]

    putStrLn "Lista ordenada e benchmark finalizado!"
