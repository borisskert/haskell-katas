module Difference where

-- https://www.codewars.com/kata/523f5d21c841566fde000009/train/haskell

difference :: Eq a => [a] -> [a] -> [a]
difference xs ys = filter (`notElem` ys) xs
