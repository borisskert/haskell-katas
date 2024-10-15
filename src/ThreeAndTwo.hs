module ThreeAndTwo (checkThreeAndTwo) where

-- https://www.codewars.com/kata/5a9e86705ee396d6be000091/train/haskell

import Data.List (sort)

checkThreeAndTwo :: [Char] -> Bool
checkThreeAndTwo xs
  | a == b && b == c && c /= d && d == e = True
  | a == b && b /= c && c == d && d == e = True
  | otherwise = False
  where
    [a, b, c, d, e] = sort xs
