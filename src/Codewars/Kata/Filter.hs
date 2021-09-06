module Codewars.Kata.Filter where

-- https://www.codewars.com/kata/55b051fac50a3292a9000025/train/haskell

import Data.Char (isDigit)


filterString :: String -> Int
filterString = read . filter isDigit
