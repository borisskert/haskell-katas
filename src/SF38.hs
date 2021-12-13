module SF38 where

-- https://www.codewars.com/kata/588810c99fb63e49e1000606/train/haskell

houseOfCats :: Int -> [Int]
houseOfCats n
  | even half = [0, 2 .. half]
  | otherwise = [1, 3 .. half]
  where
    half = n `div` 2
