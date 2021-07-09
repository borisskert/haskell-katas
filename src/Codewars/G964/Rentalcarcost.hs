module Codewars.G964.Rentalcarcost where

-- https://www.codewars.com/kata/568d0dd208ee69389d000016/train/haskell

rentalCarCost :: Int -> Int
rentalCarCost days
  | days >= 7 = costs - 50
  | days >= 3 = costs - 20
  | otherwise = costs
  where
    costs = days * 40
