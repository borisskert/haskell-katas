module ShortestSteps (steps) where

--  https://www.codewars.com/kata/5cd4aec6abc7260028dcd942/train/haskell

steps :: Int -> Int
steps 1 = 0
steps x
  | odd x = 1 + steps (x - 1)
  | otherwise = 1 + steps (x `div` 2)
