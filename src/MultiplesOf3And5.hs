module MultiplesOf3And5 where

-- https://www.codewars.com/kata/514b92a657cdc65150000006/train/haskell

solution :: Integer -> Integer
solution number =
  sum
    . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)
    $ [1 .. (number - 1)]
