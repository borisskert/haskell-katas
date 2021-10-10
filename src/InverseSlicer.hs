module InverseSlicer where

-- https://www.codewars.com/kata/586ec0b8d098206cce001141/train/haskell

inverseSlice :: [a] -> Int -> Int -> [a]
inverseSlice list a b = map snd . filter (\(index, _) -> index < a || index >= b) . zip [0..] $ list
