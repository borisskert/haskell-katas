module Codewars.LuckyNumberChecker where

-- https://www.codewars.com/kata/55afed09237df73343000042/train/haskell

import Data.Char (digitToInt)


isLucky :: Integer -> Bool
isLucky = (\x -> x == 0 || x `mod` 9 == 0) . sum . toDigits


toDigits :: Integer -> [Int]
toDigits = map digitToInt . show
