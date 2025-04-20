module TwoHighest (twoHighest) where

import Data.List (nub, sortBy, sortOn)
import qualified Data.Ord

-- https://www.codewars.com/kata/57ab3c09bb994429df000a4a/train/haskell
twoHighest :: (Ord a) => [a] -> [a]
twoHighest = take 2 . sortOn Data.Ord.Down . nub
