module Codewars.Puzzle (testit) where

-- https://www.codewars.com/kata/56d949281b5fdc7666000004/train/haskell

import Data.List (sort, nub)

testit :: [Int] -> [Int] -> [Int]
testit a b = sort $ nub a ++ nub b
