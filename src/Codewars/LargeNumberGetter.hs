module Codewars.LargeNumberGetter where

-- https://www.codewars.com/kata/563b1f55a5f2079dc100008a/train/haskell

getLargerNumbers :: Ord a => [a] -> [a] -> [a]
getLargerNumbers [] [] = []
getLargerNumbers xs ys
  | head xs > head ys = head xs : getLargerNumbers (tail xs) (tail ys)
  | otherwise = head ys : getLargerNumbers (tail xs) (tail ys)

-- best practice:
-- getLargerNumbers = zipWith max
