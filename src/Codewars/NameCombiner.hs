module Codewars.NameCombiner where

--  https://www.codewars.com/kata/55f73f66d160f1f1db000059/train/haskell

combineNames :: String -> String -> String
combineNames first last = unwords [first, last]
