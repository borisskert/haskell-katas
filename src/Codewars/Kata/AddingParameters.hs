module Codewars.Kata.AddingParameters where

-- https://www.codewars.com/kata/555b73a81a6285b6ce000047/train/haskell

add :: Num a => [a] -> a
add = sum . map (\(index, x) -> fromIntegral index * x) . zip [1..]
