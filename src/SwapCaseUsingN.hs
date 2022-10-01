module SwapCaseUsingN (swap) where

--  https://www.codewars.com/kata/5f3afc40b24f090028233490/train/haskell

import Data.Char (isLetter, isUpper, toLower, toUpper)

swap :: String -> Int -> String
swap cs n = toggleZip cs bits
  where
    bits = cycle . intToBin $ n

toggleZip :: [Char] -> [Bool] -> [Char]
toggleZip [] _ = []
toggleZip (c : cs) bits@(toggle : bs)
  | not . isLetter $ c = c : toggleZip cs bits
  | toggle = toggleCase c : toggleZip cs bs
  | otherwise = c : toggleZip cs bs

toggleCase :: Char -> Char
toggleCase c
  | isUpper c = toLower c
  | otherwise = toUpper c

intToBin :: Int -> [Bool]
intToBin n
  | div2 > 0 = intToBin div2 ++ [rest /= 0]
  | otherwise = [rest /= 0]
  where
    div2 = n `div` 2
    rest = n `mod` 2
