module Codewars.G964.Longest where

-- https://www.codewars.com/kata/5656b6906de340bd1b0000ac/train/haskell

import Data.List (sort, nub)

longest :: [Char] -> [Char] -> [Char]
longest s1 s2 = sort $ nub (s1 ++ s2)
