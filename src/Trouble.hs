module Trouble where 

-- https://www.codewars.com/kata/57f7796697d62fc93d0001b8/train/haskell

trouble :: [Int] -> Int -> [Int]
trouble xs n = foldl reduce [] xs
  where
    reduce :: [Int] -> Int -> [Int]
    reduce xs i
      | null xs = [i]
      | last xs + i /= n = xs ++ [i]
      | otherwise = xs
