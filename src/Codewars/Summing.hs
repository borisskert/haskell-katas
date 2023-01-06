module Codewars.Summing where

-- https://www.codewars.com/kata/52cd0d600707d0abcd0003eb/train/haskell

import Data.List (sort, sortOn)
import Data.Ord (Down (..))

minimumSum :: [Integer] -> Int -> Integer
minimumSum xs n = sum . take n . sort $ xs

maximumSum :: [Integer] -> Int -> Integer
maximumSum xs n = sum . take n . sortOn Down $ xs
