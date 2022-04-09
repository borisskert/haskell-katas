module Codewars.G.Persistence where

-- https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/haskell

import Data.Char (digitToInt)

persistence :: Int -> Int
persistence = counting 0
  where
    counting :: Int -> Int -> Int
    counting i n
      | n < 10 = i
      | otherwise = counting (i + 1) . product . toDigits $ n

toDigits :: Int -> [Int]
toDigits = map digitToInt . show
