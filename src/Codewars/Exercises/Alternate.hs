module Codewars.Exercises.Alternate where

-- https://www.codewars.com/kata/559d7951ce5e0da654000073/train/haskell

alternateSqSum :: [Integer] -> Maybe Integer
alternateSqSum [] = Nothing
alternateSqSum seq =
  Just
    . sum
    . map (\(i, x) -> if odd i then x * x else x)
    . zip [0 ..]
    $ seq
