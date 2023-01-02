module Haskell.Codewars.Merge2048 where

-- https://www.codewars.com/kata/55e1990978c60e5052000011/train/haskell

import Data.List (group)
import Data.List.Split (chunksOf)

merge :: [Int] -> [Int]
merge xs = merged ++ zeros
  where
    size = length xs
    merged = concatMap (map sum . chunksOf 2) . group . filter (/= 0) $ xs
    zeros = replicate (size - length merged) 0
