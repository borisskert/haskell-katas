module LargestPairSum (largestPairSum) where

-- https://www.codewars.com/kata/556196a6091a7e7f58000018/train/haskell

import Data.List.Split (divvy)
import Data.List (sort)

largestPairSum :: (Integral a) => [a] -> a
largestPairSum = maximum . map sum . divvy 2 1 . reverse . sort
