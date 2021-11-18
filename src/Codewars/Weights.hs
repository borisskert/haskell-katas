module Codewars.Weights where

-- https://www.codewars.com/kata/53921994d8f00b93df000bea/train/haskell

contentWeight :: Int -> String -> Int
contentWeight weight str
  | smaller = weight `div` (times + 1)
  | otherwise = weight `div` (times + 1) * times
  where
    smaller = (== "smaller") . last . words $ str :: Bool
    times = read . head . words $ str :: Int
