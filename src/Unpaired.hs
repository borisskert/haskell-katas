module Unpaired where

-- https://www.codewars.com/kata/57475353facb0e7431000651/train/haskell

import Data.List (nub)

hotSingles :: (Eq a) => [a] -> [a] -> [a]
hotSingles arr1 arr2 = first ++ second
  where
    first = filter (`notElem` arr2) . nub $ arr1
    second = filter (`notElem` arr1) . nub $ arr2
