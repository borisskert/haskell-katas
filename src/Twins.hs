module Twins (evenTwins) where

-- https://www.codewars.com/kata/5a9da7d07ce110fea1000638/train/haskell

import Data.List (nub)

evenTwins :: [Int] -> Int
evenTwins xs = length . filter even . nub . map sum $ combinations
  where
    indexed = zip xs [0 ..]
    combinations = [[x, y] | (x, indexX) <- indexed, (y, indexY) <- indexed, indexX < indexY]
