module Ackermann where

-- https://www.codewars.com/kata/53ad69892a27079b34000bd9/train/haskell

ackermann :: Integer -> Integer -> Integer
ackermann 0 n = n + 1
ackermann m 0 = ackermann (m - 1) 1
ackermann m n = ackermann (m - 1) (ackermann m (n - 1))
