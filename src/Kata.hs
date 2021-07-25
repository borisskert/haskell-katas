module Kata where

--  https://www.codewars.com/kata/580a4734d6df748060000045/train/haskell

import Data.List (sort)


isSortedAndHow :: [Integer] -> String
isSortedAndHow lst
  | lst == sorted = "yes, ascending"
  | lst == reverse sorted = "yes, descending"
  | otherwise = "no"
  where
    sorted = sort lst
