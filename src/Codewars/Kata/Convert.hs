module Codewars.Kata.Convert where

-- https://www.codewars.com/kata/5583090cbe83f4fd8c000051/train/haskell

digitize :: Int -> [Int]
digitize 0 = [0]
digitize number = digitizeNumber number

digitizeNumber :: Int -> [Int]
digitizeNumber 0 = []
digitizeNumber number = [number `mod` 10] ++ digitizeNumber (number `div` 10)
