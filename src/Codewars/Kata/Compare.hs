module Codewars.Kata.Compare where

-- https://www.codewars.com/kata/550498447451fbbd7600041c/train/haskell

import Data.List (delete)

comp :: [Integer] -> [Integer] -> Bool
comp [] [] = True
comp [] _ = False
comp _ [] = False
comp (a : as) bs
  | a * a `elem` bs = comp as ((a * a) `delete` bs)
  | otherwise = False
