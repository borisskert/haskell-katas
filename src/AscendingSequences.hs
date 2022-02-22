module AscendingSequences where

-- https://www.codewars.com/kata/5be0f1786279697939000157/train/haskell

solve :: Int -> Int
solve = memoized

memoized :: Int -> Int
memoized = (map find [0 ..] !!)
  where
    find 1 = 1
    find x
      | odd x = memoized (x - 2) + memoized (x `div` 2)
      | even x = memoized (x - 1) + memoized (x `div` 2)
