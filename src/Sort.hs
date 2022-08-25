module Sort where

--  https://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/haskell

import Data.Char (toLower)
import Data.List (sortBy)

sortme :: [String] -> [String]
sortme = sortBy ignoringCase

ignoringCase :: String -> String -> Ordering
ignoringCase a b = compare lowerA lowerB
  where
    lowerA = map toLower a
    lowerB = map toLower b
