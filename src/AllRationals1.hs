module AllRationals1 where

-- https://www.codewars.com/kata/5e4e8f5a72d9550032953717/train/haskell

allRationals :: [(Integer, Integer)]
allRationals = concat . iterate next $ [(1, 1)]
  where
    next :: [(Integer, Integer)] -> [(Integer, Integer)]
    next [] = []
    next ((a, b):others) = [(a, b + a), (a + b, b)] ++ next others
