module Kata where

--  https://www.codewars.com/kata/57cc981a58da9e302a000214/train/haskell

smallEnough :: [Int] -> Int -> Bool
smallEnough [] _ = True
smallEnough xs limit = maximum xs <= limit
