module IterateN (iterateN) where

-- https://www.codewars.com/kata/54b679eaac3d54e6ca0008c9/train/haskell

iterateN :: Int -> (a -> a) -> (a -> a)
iterateN 0 _ = id
iterateN n f = f . iterateN (n - 1) f
