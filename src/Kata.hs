module Kata where

import Data.Char (digitToInt)

-- https://www.codewars.com/kata/586bca7fa44cfc833e00005c/train/haskell

createArrayOfTiers :: Int -> [String]
createArrayOfTiers n = map (showDigits . (`take` digits)) [1 .. count]
  where
    digits = toDigits n :: [Int]
    count = length digits :: Int

toDigits :: Int -> [Int]
toDigits = map digitToInt . show

showDigits :: [Int] -> String
showDigits = concatMap show
