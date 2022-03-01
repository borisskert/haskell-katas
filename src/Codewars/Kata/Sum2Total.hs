module Codewars.Kata.Sum2Total where

-- https://www.codewars.com/kata/559fed8454b12433ff0000a2/train/haskell

total :: Num a => [a] -> a
total xs = last . foldl go [] $ xs
  where
    go :: Num a => [a] -> a -> [a]
    go xs x = scanl (+) x xs
