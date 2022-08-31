module Twisted37 where

--  https://www.codewars.com/kata/58068479c27998b11900056e/train/haskell

import Data.Char (digitToInt)
import Data.List (sortOn)

sortTwisted37 :: [Int] -> [Int]
sortTwisted37 = sortOn twisted37ToInt

twisted37ToInt :: Int -> Int
twisted37ToInt n = digitsToInt (sign, map twisted37Digit digits)
  where
    (sign, digits) = intToDigits n

twisted37Digit :: Int -> Int
twisted37Digit 3 = 7
twisted37Digit 7 = 3
twisted37Digit n = n

intToDigits :: Int -> (Int, [Int])
intToDigits n
  | n < 0 = (-1, map digitToInt . tail $ digits)
  | otherwise = (1, map digitToInt digits)
  where
    digits = show n

digitsToInt :: (Int, [Int]) -> Int
digitsToInt (sign, digits) = (sign *) . read . concatMap show $ digits
