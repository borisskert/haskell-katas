module CamelCase.JorgeVS.Kata where

import Data.Char (toLower, toUpper)

-- https://www.codewars.com/kata/587731fda577b3d1b0001196/train/haskell

camelCase :: String -> String
camelCase = concatMap capitalize . words
  where
    capitalize :: String -> String
    capitalize (c : cs) = toUpper c : map toLower cs
