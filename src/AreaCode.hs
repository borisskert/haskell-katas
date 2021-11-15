module AreaCode (areaCode) where

-- https://www.codewars.com/kata/585a36b445376cbc22000072/train/haskell

areaCode :: String -> String
areaCode = takeWhile (/= ')') . drop 1 . dropWhile (/= '(')
