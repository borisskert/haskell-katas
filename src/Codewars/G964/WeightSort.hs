module Codewars.G964.WeightSort where

-- https://www.codewars.com/kata/55c6126177c9441a570000cc/train/haskell

import Data.Char (digitToInt)
import Data.List (sortBy)

orderWeight :: [Char] -> [Char]
orderWeight = unwords . sortBy weightOrdering . words

weightOrdering :: String -> String -> Ordering
weightOrdering a b
  | sumA == sumB = compare a b
  | otherwise = compare sumA sumB
  where
    sumA = sum . toDigits $ a :: Int
    sumB = sum . toDigits $ b :: Int

toDigits :: String -> [Int]
toDigits = map digitToInt
