module Isogram where

--  https://www.codewars.com/kata/54ba84be607a92aa900000f1/train/haskell

import Data.List (nub)
import Data.Char (toLower)


isIsogram :: String -> Bool
isIsogram text = nub lowerCase == lowerCase
  where
    lowerCase = map toLower text
