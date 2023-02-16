module EstSubsets (estSubsets) where

-- https://www.codewars.com/kata/584703d76f6cf6ffc6000275/train/haskell

import Data.List (nub)

estSubsets :: Ord a => [a] -> Integer
estSubsets = subtract 1 . (2 ^) . length . nub
