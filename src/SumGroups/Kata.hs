module SumGroups.Kata (sumGroups) where

-- https://www.codewars.com/kata/58b3c2bd917a5caec0000017/train/haskell

import Data.List (groupBy)

sumGroups :: [Int] -> Int
sumGroups xs
  | xs == xs' = length xs
  | otherwise = sumGroups xs'
  where
    xs' = map sum . groupOn even $ xs

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)
