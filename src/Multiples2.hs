module Multiples2 where

-- https://www.codewars.com/kata/5ba178be875de960a6000187/train/haskell

import Data.List (sort)

findLowestInt :: Int -> Int
findLowestInt k1 =
  fst
    . head
    . filter (\(_, (x, y)) -> toDigits x == toDigits y)
    . map (\x -> (x, (x * k1, x * k2)))
    $ [1 ..]
  where
    k2 = k1 + 1

toDigits :: Int -> String
toDigits = sort . show
