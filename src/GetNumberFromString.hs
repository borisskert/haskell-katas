module GetNumberFromString where

--  https://www.codewars.com/kata/57a37f3cbb99449513000cd8/train/haskell

import Data.Char (isDigit)
  
getNumberFromString :: String -> Int
getNumberFromString text = read (filter isDigit text)
