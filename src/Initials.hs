module Initials where

-- https://www.codewars.com/kata/57b56af6b69bfcffb80000d7/train/haskell

import Data.Char (toUpper)

toInitials :: String -> String
toInitials = unwords . map ((: ".") . toUpper . head) . words
