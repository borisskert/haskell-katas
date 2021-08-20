module NthSmallest where

-- https://www.codewars.com/kata/5a512f6a80eba857280000fc/train/haskell

import Data.List (sort)


nthSmallest :: [Int] -> Int -> Int
nthSmallest xs n = last $ take n $ sort xs
