module Codewars.NumberClimber where

-- https://www.codewars.com/kata/559760bae64c31556c00006b/train/haskell

climb :: Int -> [Int]
climb 1 = [1]
climb x = climb (x `div` 2) ++ [x]
