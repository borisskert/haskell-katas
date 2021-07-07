module Codewars.Kata.FakeBinary where

-- https://www.codewars.com/kata/57eae65a4321032ce000002d/train/haskell

import Data.Char (digitToInt)

fakeBin :: String -> String
fakeBin = map fake

fake :: Char -> Char
fake char = do
  let digit = digitToInt char
  
  if digit < 5
    then '0'
    else '1'
