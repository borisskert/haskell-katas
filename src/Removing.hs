module Removing (removeEveryOther) where

-- https://www.codewars.com/kata/5769b3802ae6f8e4890009d2/train/haskell

removeEveryOther :: [a] -> [a]
removeEveryOther [] = []
removeEveryOther [x] = [x]
removeEveryOther (x:xs) = (x :) . removeEveryOther . tail $ xs
