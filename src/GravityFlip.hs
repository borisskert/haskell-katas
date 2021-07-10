module GravityFlip (gravityFlip) where

-- https://www.codewars.com/kata/5f70c883e10f9e0001c89673/train/haskell

import Data.List (sort)
  
gravityFlip :: Char -> [Int] -> [Int]
gravityFlip 'R' = sort
gravityFlip 'L' = reverse . sort
