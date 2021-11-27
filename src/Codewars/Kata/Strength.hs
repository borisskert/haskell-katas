module Codewars.Kata.Strength where

-- https://www.codewars.com/kata/571640812ad763313600132b/train/haskell

alexMistakes :: Int -> Int -> Int
alexMistakes numberOfKatas timeLimit = misstakes . minutes $ numberOfKatas
  where
    minutes = (timeLimit -) . (`div` 10) . (* 60)
    misstakes = intLog2 . (`div` 5)

intLog2 :: Int -> Int
intLog2 x = count x 0
  where
    count :: Int -> Int -> Int
    count x counter
      | x <= 1 = counter
      | otherwise = count (x `div` 2) (counter + 1)
