module Codewars.Kata.Pentabonacci where

import Data.Set (Set, empty, insert, member)

--  https://www.codewars.com/kata/55c9172ee4bb15af9000005d/train/haskell

countOddPentaFib :: Int -> Int
countOddPentaFib n =
  length
    . filter (odd :: Int -> Bool)
    . unique
    $ pentabonacci (0, 1, 1, 2, 4) (n + 1)

pentabonacci :: Num a => (a, a, a, a, a) -> Int -> [a]
pentabonacci (a, b, c, d, e) i = take i $ [a, b, c, d, e] ++ make [e, d, c, b, a]
  where
    make xs@(d' : c' : b' : a' : _) = e' : make [e', d', c', b', a']
      where
        e' = sum xs

-- a lot faster than `nub`
unique :: (Ord a) => [a] -> [a]
unique xs = go empty xs
  where
    go :: (Ord a) => Set a -> [a] -> [a]
    go _ [] = []
    go found (x : xs)
      | member x found = go found xs
      | otherwise = x : go (insert x found) xs
