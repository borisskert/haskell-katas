module Codewars.ConsonantCounter where

-- https://www.codewars.com/kata/564e7fc20f0b53eb02000106/train/haskell

import Data.Char (isLetter)

consonantCount :: String -> Int
consonantCount = length . filter (not . (`elem` "aeiouAEIOU")) . filter isLetter
