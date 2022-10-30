module Kata where

--  https://www.codewars.com/kata/59c7e477dcc40500f50005c7/train/haskell

isOddHeavy :: [Int] -> Bool
isOddHeavy xs
  | null odds = False
  | null evens = True
  | otherwise = all (> maxEven) odds
  where
    odds = filter odd xs
    evens = filter even xs
    maxEven = maximum evens
