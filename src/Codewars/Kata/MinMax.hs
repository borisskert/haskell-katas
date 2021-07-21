module Codewars.Kata.MinMax where

--  https://www.codewars.com/kata/559590633066759614000063/train/haskell

import Data.List (sort)


minMax :: (Ord a) => [a] -> (a, a)
minMax xs = (head sorted, last sorted)
  where
    sorted = sort xs
