module KthElement where

import Prelude hiding ((!!))

-- https://www.codewars.com/kata/54411212cf36259c04000f04/train/haskell

elementAt :: Int -> [a] -> Maybe a
elementAt _ [] = Nothing
elementAt 1 (x : xs) = Just x
elementAt i (x : xs)
  | i < 0 = Nothing
  | otherwise = elementAt (i - 1) xs
