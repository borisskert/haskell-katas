module Smallest where

--  https://www.codewars.com/kata/5aec1ed7de4c7f3517000079/train/haskell

import Data.List (sortOn)

firstNSmallest :: [Int] -> Int -> [Int]
firstNSmallest xs n = map snd . sortOn fst . take n . sortOn snd . zip [0 ..] $ xs
