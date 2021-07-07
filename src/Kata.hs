module Kata where

-- https://www.codewars.com/kata/576b93db1129fcf2200001e6/train/haskell

sumArray :: Maybe [Int] -> Int
sumArray (Just [])      = 0
sumArray Nothing        = 0
sumArray (Just numbers) = sumExceptFirst (quicksort numbers)


sumExceptFirst :: [Int] -> Int
sumExceptFirst [_] = 0
sumExceptFirst (first:others) = sumExceptLast others 


sumExceptLast :: [Int] -> Int
sumExceptLast [_]= 0
sumExceptLast (first:others) = first + sumExceptLast others


--https://stackoverflow.com/a/19083491/13213024
quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs
