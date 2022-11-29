module Kata.NumericFormatter (numericFormatter) where

-- https://www.codewars.com/kata/59901fb5917839fe41000029/train/haskell

import Data.Char (isLetter)

numericFormatter :: String -> String -> String
numericFormatter template [] = format template . tail . cycle $ ['0' .. '9']
numericFormatter template number = format template (cycle number)

format :: String -> String -> String
format [] _ = []
format (t : template) (n : number)
  | isLetter t = n : numericFormatter template number
  | otherwise = t : numericFormatter template (n : number)
