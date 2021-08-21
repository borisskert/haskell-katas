module Special where

-- https://www.codewars.com/kata/5a55f04be6be383a50000187/train/haskell

import Data.Char (digitToInt)


specialNumber :: Int -> String
specialNumber n
  | isSpecial n = "Special!!"
  | otherwise   = "NOT!!"


isSpecial :: Int -> Bool 
isSpecial = all (<= 5) . toDigits


toDigits :: Int -> [Int]
toDigits = map digitToInt . show
