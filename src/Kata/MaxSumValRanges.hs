module Kata.MaxSumValRanges (maxSum) where

--  https://www.codewars.com/kata/583d10c03f02f41462000137/train/haskell

maxSum :: [Int] -> [(Int, Int)] -> Int
maxSum xs = maximum . map (sum . (`get` xs))

get :: (Int, Int) -> [a] -> [a]
get range = map snd . filter (isBetween range . fst) . zip [0 ..]

isBetween :: (Ord a) => (a, a) -> a -> Bool
isBetween (start, end) x = x >= start && x <= end
