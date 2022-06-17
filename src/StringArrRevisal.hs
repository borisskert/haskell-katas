module StringArrRevisal where

-- https://www.codewars.com/kata/59f08f89a5e129c543000069/train/haskell

import Data.List (group)

dup :: [String] -> [String]
dup = map (map head . group)
