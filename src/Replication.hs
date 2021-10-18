module Replication where

-- https://www.codewars.com/kata/57547f9182655569ab0008c4/train/haskell

recursivelyReplicate :: Int -> a -> [a]
recursivelyReplicate t n
  | t > 0 = n : recursivelyReplicate (t - 1) n
  | otherwise = []
