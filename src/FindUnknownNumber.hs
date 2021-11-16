module FindUnknownNumber where

-- https://www.codewars.com/kata/59cdb2b3a25c8c6d56000005/train/haskell

findUnknown :: Int -> Int -> Int -> Int
findUnknown x y z =
  head
    . filter (\i -> i `mod` 7 == z)
    . filter (\i -> i `mod` 5 == y)
    . filter (\i -> i `mod` 3 == x)
    $ [1 ..]
