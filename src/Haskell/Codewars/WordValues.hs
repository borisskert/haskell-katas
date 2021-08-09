module Haskell.Codewars.WordValues where

-- https://www.codewars.com/kata/598d91785d4ce3ec4f000018/train/haskell

import Data.Char (ord, isLower)


wordValue :: [[Char]] -> [Int]
wordValue = zipWith (*) [1..] . map toWordValue


toWordValue :: [Char] -> Int 
toWordValue = sum . map toValue . filter isLower


toValue :: Char -> Int
toValue char = ord char - offset
  where
    offset = ord 'a' - 1 :: Int
