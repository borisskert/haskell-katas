module CircularlySortedArray (isCircleSorted) where

-- https://www.codewars.com/kata/544975fc18f47481ba00107b/train/haskell

import Data.List (groupBy, sort)

isCircleSorted :: (Ord a) => [a] -> Bool
isCircleSorted [] = True
isCircleSorted xs = ys == sort xs
  where
    (a : b) = groupBy (flip (>=)) xs
    ys = concat $ b ++ [a]
