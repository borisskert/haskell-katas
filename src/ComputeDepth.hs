module ComputeDepth where

--  https://www.codewars.com/kata/59b401e24f98a813f9000026/train/haskell

import Data.Char (digitToInt)
import Data.List (nub)

computeDepth :: Int -> Int
computeDepth n = go [] 1
  where
    go :: [Int] -> Int -> Int
    go digits factor
      | length nextDigits == 10 = factor
      | otherwise = go nextDigits (factor + 1)
      where
        foundDigits = intToDigits . (* factor) $ n
        nextDigits = nub . (digits ++) $ foundDigits

intToDigits :: Int -> [Int]
intToDigits = map digitToInt . show
