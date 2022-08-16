module Codewars.Kata.TriangleNumbers where

-- https://www.codewars.com/kata/557e8a141ca1f4caa70000a6/train/haskell

isTriangleNumber :: Integer -> Bool
isTriangleNumber number = (== number) . (`div` 2) . (* (x + 1)) $ x
  where
    x = floor . sqrt . (+ 0.25) . (2 *) . fromInteger $ number
