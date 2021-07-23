module Kata where

--  https://www.codewars.com/kata/5813d19765d81c592200001a/train/haskell

dontGiveMeFive :: Int -> Int -> Int
dontGiveMeFive start end = length $ filter (notContaining '5') $ map show $ [start, start + 1 .. end]


notContaining :: Char -> String -> Bool
notContaining char text = not (elem char text)
