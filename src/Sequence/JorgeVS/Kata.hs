module Sequence.JorgeVS.Kata where

--  https://www.codewars.com/kata/56e9e4f516bcaa8d4f001763/train/haskell

sequenceSum :: Int -> String
sequenceSum n
  | n >= 0 = printSum [0..n] ++ " = " ++ (show $ gauss n)
  | otherwise = show n ++ " < 0"


gauss :: Int -> Int
gauss n = n * (n + 1) `div` 2


printSum :: [Int] -> String
printSum [x] = show x
printSum (x:xs) = show x ++ "+" ++ printSum xs
