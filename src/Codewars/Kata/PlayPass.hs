module Codewars.Kata.PlayPass where

import Data.Char (digitToInt, isDigit, isLetter, toLower, toUpper)

--  https://www.codewars.com/kata/559536379512a64472000053/train/haskell

playPass :: String -> Int -> String
playPass cs i = reverse . upperWeirdCase . unwords . map (map (encrypt i)) . words $ cs

encrypt :: Int -> Char -> Char
encrypt i x
  | isDigit x = (digits !!) . digitToInt $ x
  | isLetter x = (!! i) . dropWhile (/= toUpper x) $ letters
  | otherwise = x
  where
    letters = cycle "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    digits = "9876543210"

upperWeirdCase :: String -> String
upperWeirdCase [] = []
upperWeirdCase (c : cs) = toUpper c : lowerWeirdCase cs

lowerWeirdCase :: String -> String
lowerWeirdCase [] = []
lowerWeirdCase (c : cs) = toLower c : upperWeirdCase cs
