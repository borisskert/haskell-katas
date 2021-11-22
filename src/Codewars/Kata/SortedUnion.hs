module Codewars.Kata.SortedUnion where

-- https://www.codewars.com/kata/5729c30961cecadc4f001878/train/haskell

import Data.List (nub)

uniteUnique :: Ord a => [[a]] -> [a]
uniteUnique = nub . concat
