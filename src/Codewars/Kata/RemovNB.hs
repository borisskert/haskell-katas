module Codewars.Kata.RemovNB where

import Data.List (sortOn)

--  https://www.codewars.com/kata/5547cc7dcad755e480000004/train/haskell

removNb :: Integer -> [(Integer, Integer)]
removNb n =
  sortOn fst
    . concatMap (\(a, b) -> [(a, b), (b, a)])
    . filter (\(a, b) -> a * b == sumN - a - b)
    . map (\x -> (x, (sumN - x) `div` x))
    $ [1 .. n]
  where
    sumN = gauss n

gauss :: Integer -> Integer
gauss x = x * (x + 1) `div` 2
