module AddedChar where

-- https://www.codewars.com/kata/5971b219d5db74843a000052/train/haskell

import Data.List (sort)

addedChar :: String -> String -> Char
addedChar xs ys = head $ sort ys `without` sort xs

without :: String -> String -> String
without xs [] = xs
without [] _ = []
without (x : xs) (y : ys)
  | y == x = without xs ys
  | otherwise = x : without xs (y : ys)

-- #againwhatlearned
-- best practice:
-- head $ ys \\ xs
