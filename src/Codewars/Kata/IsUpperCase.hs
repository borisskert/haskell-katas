module Codewars.Kata.IsUpperCase where

-- https://www.codewars.com/kata/56cd44e1aa4ac7879200010b/train/haskell

import Data.Char (isUpper, isLetter)
  
isUpperCase :: String -> Bool
isUpperCase = all (\x -> not (isLetter x) || isUpper x)
