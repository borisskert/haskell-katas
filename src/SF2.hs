module SF2 where

-- https://www.codewars.com/kata/58841cb52a077503c4000015/train/haskell

circleOfNumbers :: Int -> Int -> Int
circleOfNumbers n x
  | x == half = 0
  | x < half = x + half
  | otherwise = x - half
  where
    half = n `div` 2
