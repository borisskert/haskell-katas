module MaxAdj where

-- https://www.codewars.com/kata/5a4138acf28b82aa43000117/train/haskell

adjacentElementProduct :: [Integer] -> Integer
adjacentElementProduct = maximum . toProducts


toProducts :: [Integer] -> [Integer]
toProducts [x1, x2] = [x1 * x2]
toProducts (x1:x2:others) = (x1 * x2) : toProducts (x2:others)
