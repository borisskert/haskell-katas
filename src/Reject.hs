module Reject (reject) where

-- https://www.codewars.com/kata/52988f3f7edba9839c00037d/train/haskell

reject :: (a -> Bool) -> [a] -> [a]
reject predicate = filter (not . predicate)
