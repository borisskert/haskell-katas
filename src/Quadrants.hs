module Quadrants where

-- https://www.codewars.com/kata/643af0fa9fa6c406b47c5399/train/haskell

quadrant :: Int -> Int -> Int
quadrant x y
  | x > 0 && y > 0 = 1
  | x < 0 && y > 0 = 2
  | x < 0 && y < 0 = 3
  | x > 0 && y < 0 = 4
  | otherwise = undefined
