module EvenOdd where

-- https://www.codewars.com/kata/59c62f1bdcc40560a2000060/train/haskell

import Data.Char (isDigit)


solve :: [String] -> Int
solve xs = length evens - length odds
  where
    isNumber = all isDigit :: String -> Bool

    numbers = map read . filter isNumber $ xs :: [Int]

    evens = filter even numbers :: [Int]
    odds = filter odd numbers :: [Int]
