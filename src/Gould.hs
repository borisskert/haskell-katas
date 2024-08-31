module Gould (gould) where

-- https://www.codewars.com/kata/66c9186bb01defccbd40449d/train/haskell

gould :: (Num a) => [a]
gould = 0 : makeGould [0]

makeGould :: (Num a) => [a] -> [a]
makeGould xs = next ++ makeGould (xs ++ next)
  where
    next = map (+ 1) xs
