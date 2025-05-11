module FindArray (findArray) where

-- https://www.codewars.com/kata/59a2a3ba5eb5d4e609000055/train/haskell

findArray :: [a] -> [Int] -> [a]
findArray xs = map (xs !!) . filter (>= 0) . filter (< length xs)
