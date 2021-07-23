module Codewars.Anagram where

--  https://www.codewars.com/kata/529eef7a9194e0cbc1000255/train/haskell

import Data.List (sort)
import Data.Char (toLower)


isAnagramOf :: String -> String -> Bool
isAnagramOf test original = normalize test == normalize original
  where
    normalize :: String -> String
    normalize text = sort $ map toLower $ text
