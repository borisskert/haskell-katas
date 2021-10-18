module Codewars.Kata.Retsec where

-- https://www.codewars.com/kata/5516ab668915478845000780/train/haskell

reverseByCenter :: String -> String
reverseByCenter xs
  | even . length $ xs = drop half xs ++ suffix
  | otherwise = drop (half + 1) xs ++ [xs !! half] ++ suffix
  where
    count = length xs :: Int
    half = count `div` 2
    suffix = take half xs :: String
