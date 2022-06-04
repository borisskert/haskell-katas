module Josephus where

-- https://www.codewars.com/kata/5550d638a99ddb113e0000a2/train/haskell

josephus :: [a] -> Int -> [a]
josephus [] _ = []
josephus xs k = n : josephus (tail b ++ a) k
  where
    size = length xs
    k' = (k - 1) `mod` size
    (a, b) = splitAt k' xs
    n = head b
