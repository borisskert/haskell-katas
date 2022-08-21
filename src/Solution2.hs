module Solution2 where

--  https://www.codewars.com/kata/5d5a7525207a674b71aa25b5/train/haskell

oddRow :: Integer -> [Integer]
oddRow n = take (fromInteger n) [start, start + 2 ..]
  where
    start = n * n - (n - 1)
