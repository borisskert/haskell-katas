module GridIndex (gridIndex) where

-- https://www.codewars.com/kata/5f5802bf4c2cc4001a6f859e/train/haskell

gridIndex :: [[Char]] -> [Int] -> String
gridIndex cs = map ((square !!) . (+ (-1)))
  where
    square = concat cs :: String


-- notes:
-- -- the "!!" operator return the n-th element from the list
-- -- *this is zero based

-- "string" !! 2 --> "r"

-- [10, 20, 30, 40] !! 1 --> 20
