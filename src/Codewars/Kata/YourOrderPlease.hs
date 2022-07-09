module Codewars.Kata.YourOrderPlease (yourOrderPlease) where

--  https://www.codewars.com/kata/55c45be3b2079eccff00010f/train/haskell

import Data.Char (isDigit)
import Data.List (sortBy)

yourOrderPlease :: String -> String
yourOrderPlease = unwords . sortBy containingNumber . words

containingNumber :: String -> String -> Ordering
containingNumber a b = compare (extractNumber a) (extractNumber b)

extractNumber :: String -> Int
extractNumber = read . filter isDigit
