module HowGoodAreYou where

-- https://www.codewars.com/kata/5601409514fc93442500010b/train/haskell

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage peers you = avg peers < you


avg :: [Int] -> Int
avg numbers = do
  if count == 0
    then 0
    else sum numbers `div` count
  where count = length numbers
