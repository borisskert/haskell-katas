module MakeUpper (makeUpperCase) where

-- https://www.codewars.com/kata/57a0556c7cb1f31ab3000ad7/train/haskell

import Data.Char (toUpper)

makeUpperCase :: String -> String
makeUpperCase = map toUpper
