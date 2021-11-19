module Codewars.Strings1 where

--  https://www.codewars.com/kata/56a946cd7bd95ccab2000055/train/haskell

import Data.Char (isLower)

lowercaseCount :: [Char] -> Int
lowercaseCount = length . filter isLower
