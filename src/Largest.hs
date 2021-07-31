module Largest where

-- https://www.codewars.com/kata/5a4ea304b3bfa89a9900008e/train/haskell

import Data.Char (digitToInt, intToDigit)
import Data.List (sort)


maxNumber :: Int -> Int
maxNumber = fromDigits . reverse . sort . toDigits


toDigits :: Int -> [Int]
toDigits = map digitToInt . show


fromDigits :: [Int] -> Int
fromDigits = read . map intToDigit
