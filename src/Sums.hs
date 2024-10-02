module Sums (sumTwoSmallestNumbers) where

-- https://www.codewars.com/kata/558fc85d8fd1938afb000014/train/haskell

import Data.List (sort)

sumTwoSmallestNumbers :: [Int] -> Int
sumTwoSmallestNumbers = sum . take 2 . sort
