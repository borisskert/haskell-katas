module RemoveDuplicateWords where

--  https://www.codewars.com/kata/5b39e3772ae7545f650000fc/train/haskell

import Data.List (nub)


removeDuplicateWords :: String -> String
removeDuplicateWords = unwords . nub . words
