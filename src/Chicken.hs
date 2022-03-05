module Chicken where

-- https://www.codewars.com/kata/59d12056dcc405ac130000d3/train/haskell

chickenOptions :: Int -> [Int]
chickenOptions x = takeWhile (<= x) . (++ [18 ..]) $ [0, 3, 6, 9, 10, 12, 13, 15, 16]
