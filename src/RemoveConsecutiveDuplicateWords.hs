module RemoveConsecutiveDuplicateWords (remove) where

-- https://www.codewars.com/kata/5b39e91ee7a2c103300018b3/train/haskell

import Data.List (group)

remove :: String -> String
remove = unwords . map head . group . words
