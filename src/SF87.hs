module SF87 where

-- https://www.codewars.com/kata/589573e3f0902e8919000109/train/haskell

import Data.List (sort)


shuffledList :: [Int] -> [Int]
shuffledList xs = sort . removeOne $ xs
  where
    summarized = (`div` 2) . sum $ xs :: Int
    

    -- import Data.List ((\\))
    -- use `\\` function
    removeOne :: [Int] -> [Int]
    removeOne [] = []
    removeOne (x:others)
      | x == summarized = others
      | otherwise = x : removeOne others
