module LastDigitsOfANumber (lastDigits) where

-- https://www.codewars.com/kata/5cd5ba1ce4471a00256930c0/train/haskell

import Data.Char (digitToInt)

lastDigits :: Int -> Int -> [Int]
lastDigits number count = drop toDrop . intToDigits $ number
  where
    digits = intToDigits number :: [Int]
    toDrop = (+ negate count) . length $ digits :: Int

intToDigits :: Int -> [Int]
intToDigits = map digitToInt . show
