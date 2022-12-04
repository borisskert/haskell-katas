module RankVector (ranks) where

-- https://www.codewars.com/kata/545f05676b42a0a195000d95/train/haskell

import Data.List (groupBy, sortOn)

ranks :: (Eq a, Ord a) => [a] -> [Int]
ranks = map snd . sortOn fst . mkRanks . groupOn snd . sortOn snd . zip [0 ..]

mkRanks :: [[(Int, a)]] -> [(Int, Int)]
mkRanks [] = []
mkRanks (group : gs) = ranks ++ mkRanks gs
  where
    rank = (length . concat $ gs) + 1
    ranks = map (\(index, _) -> (index, rank)) group

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)
