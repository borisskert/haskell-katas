module Solution (revSub) where

-- https://www.codewars.com/kata/64c7bbad0a2a00198657013d/train/haskell

import Data.List (groupBy)

revSub :: [Integer] -> [Integer]
revSub = concatMap reverseWhenEvens . groupOn even

reverseWhenEvens :: [Integer] -> [Integer]
reverseWhenEvens [] = []
reverseWhenEvens xs@(x : _)
  | even x = reverse xs
  | otherwise = xs

groupOn :: (Eq b) => (a -> b) -> [a] -> [[a]]
groupOn get = groupBy (\a b -> get a == get b)
