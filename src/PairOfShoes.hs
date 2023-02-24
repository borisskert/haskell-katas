module PairOfShoes (pairOfShoes) where

-- https://www.codewars.com/kata/58885a7bf06a3d466e0000e3/train/haskell

import Data.List (groupBy, sortOn)

pairOfShoes :: [[Int]] -> Bool
pairOfShoes = all ((areValidPairs . map length) . (groupOn head . sortOn head)) . groupOn last . sortOn last

areValidPairs :: [Int] -> Bool
areValidPairs [x, y] = x == y
areValidPairs _ = False

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)
