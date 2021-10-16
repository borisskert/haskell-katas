module DigitsAverage where

-- https://www.codewars.com/kata/5a32526ae1ce0ec0f10000b2/train/haskell

import Data.Char (digitToInt)

digitsAverage :: Int -> Int
digitsAverage = head . avgUntilLast . toDigits
  where
    avgUntilLast :: [Int] -> [Int]
    avgUntilLast xs
      | length next > 1 = avgDigits next
      | otherwise = next
      where
        next = avgDigits xs :: [Int]

    avgDigits :: [Int] -> [Int]
    avgDigits [] = []
    avgDigits [x] = [x]
    avgDigits [x1, x2] = [avg x1 x2]
    avgDigits (x1 : x2 : others) = avg x1 x2 : avgDigits (x2 : others)

    avg :: Int -> Int -> Int
    avg x y
      | even sum = sum `div` 2
      | otherwise = (sum `div` 2) + 1
      where
        sum = x + y :: Int

toDigits :: Int -> [Int]
toDigits = map digitToInt . show
