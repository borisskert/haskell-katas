module Swap where

-- https://www.codewars.com/kata/5886c6b2f3b6ae33dd0000be/train/haskell

firstReverseTry :: [Int] -> [Int]
firstReverseTry [] = []
firstReverseTry [x] = [x]
firstReverseTry xs = (last xs :) . (++ [head xs]) . tail . init $ xs
