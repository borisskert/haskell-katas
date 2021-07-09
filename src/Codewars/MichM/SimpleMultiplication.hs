module Codewars.MichM.SimpleMultiplication where

-- https://www.codewars.com/kata/583710ccaa6717322c000105/train/haskell

simpleMultiplication :: Int -> Int
simpleMultiplication n
  | even n = n * 8
  | otherwise = n * 9
