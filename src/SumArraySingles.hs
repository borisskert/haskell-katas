module SumArraySingles where 

-- https://www.codewars.com/kata/59f11118a5e129e591000134/train/haskell

repeats :: [Int] -> Int 
repeats xs = sum $ filter occurresOnce xs
  where
    occurresOnce :: Int -> Bool
    occurresOnce x = length (filter (== x) xs) == 1
