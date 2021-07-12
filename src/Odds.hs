module Odds where

--  https://www.codewars.com/kata/559f80b87fa8512e3e0000f5/train/haskell

odds :: [Int] -> [Int]
odds = filter (\x -> x `mod` 2 /= 0)
