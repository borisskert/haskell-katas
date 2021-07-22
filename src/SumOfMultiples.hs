module SumOfMultiples where

--  https://www.codewars.com/kata/57f36495c0bb25ecf50000e7/train/haskell

import Data.List (nub)


findSum n = sum . nub $ [3, 6 .. n] ++ [5, 10 .. n]
