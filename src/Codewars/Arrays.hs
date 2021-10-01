module Codewars.Arrays where

-- https://www.codewars.com/kata/56b1eb19247c01493a000065/train/haskell

import Data.List (nub)


uniqueSum :: [Int] -> Int
uniqueSum = sum . nub
