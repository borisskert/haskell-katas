module LettersBestFriend (bestFriend) where

-- https://www.codewars.com/kata/64fc03a318692c1333ebc04c/train/haskell

bestFriend :: String -> Char -> Char -> Bool
bestFriend [] _ _ = True
bestFriend [x] a _ = x /= a
bestFriend (x : y : xs) a b
  | x == a && y /= b = False
  | otherwise = bestFriend (y : xs) a b
