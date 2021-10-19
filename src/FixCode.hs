module FixCode where

-- https://www.codewars.com/kata/5b7bd90ef643c4df7400015d/train/haskell

import Data.Char (ord)

solve :: [Char] -> Bool
solve [] = True
solve [_] = True
solve xs
  | diff == 2 || diff == 0 = solve (init (tail xs))
  | otherwise = False
  where
    diff = abs ((ord . last $ xs) - (ord . head $ xs))
