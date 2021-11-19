module Codewars.Exercise.DropWhile where
import Prelude hiding (dropWhile, span, break)

-- https://www.codewars.com/kata/54f9c37106098647f400080a/train/haskell

dropWhile :: [a] -> (a -> Bool) -> [a]
dropWhile [] _ = []
dropWhile xs p
  | p . head $ xs = dropWhile (tail xs) p
  | otherwise = xs
