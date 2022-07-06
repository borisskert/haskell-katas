module Codewars.Kata.FindOdd where

--  https://www.codewars.com/kata/54da5a58ea159efa38000836/train/haskell

findOdd :: [Int] -> Int
findOdd xs =
  fst
    . head
    . filter (odd . snd)
    . map (\x -> (x, length . filter (== x) $ xs))
    $ xs
