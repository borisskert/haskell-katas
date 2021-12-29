module Counter (ones) where

-- https://www.codewars.com/kata/56ec1e8492446a415e000b63/train/haskell

import Data.List (group)

ones :: [Int] -> [Int]
ones = map length . filter (elem 1) . group
