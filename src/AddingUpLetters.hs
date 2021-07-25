module AddingUpLetters (addLetters, toValue, toLetter) where

--  https://www.codewars.com/kata/5d50e3914861a500121e1958/train/haskell

import Data.Char (ord, chr)


addLetters :: [Char] -> Char
addLetters = toLetter . sum . map toValue


toValue :: Char -> Int
toValue 'z' = 0
toValue char = ord char - ordA + 1
  where
    ordA = ord 'a' :: Int


toLetter :: Int -> Char
toLetter 0 = 'z'
toLetter char = chr normalized
  where
    ordA = ord 'a' :: Int
    diff = ord 'z' - ord 'a' :: Int
    count = ord 'z' - ord 'a' + 1 :: Int
    normalized = (char + diff) `mod` count + ordA
