module Tidy where

-- https://www.codewars.com/kata/5a87449ab1710171300000fd/train/haskell

import Data.Char (digitToInt)


tidyNumber :: Int -> Bool
tidyNumber = isTidy . toDigits


isTidy :: [Int] -> Bool
isTidy [_] = True
isTidy [x1, x2] = x1 <= x2
isTidy (x1:x2:others)
  | x1 <= x2   = isTidy (x2 : others)
  | otherwise = False


toDigits :: Int -> [Int]
toDigits = map digitToInt . show
