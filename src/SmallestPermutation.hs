module SmallestPermutation (minPermutation) where

--  https://www.codewars.com/kata/5fefee21b64cc2000dbfa875/train/haskell

import Data.List (sort)

minPermutation :: Int -> Int
minPermutation 0 = 0
minPermutation n
  | n > 0 = value
  | otherwise = negate value
  where
    shown = show . abs $ n
    zeros = filter (== '0') shown
    nonZeros = sort . filter (/= '0') $ shown
    value = read . (++ tail nonZeros) $ (head nonZeros : zeros)
