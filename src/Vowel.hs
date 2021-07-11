module Vowel where

--  https://www.codewars.com/kata/57cff961eca260b71900008f/train/haskell

import Data.Char (ord, chr)


isVow :: [Int] -> [Either Int String]
isVow = map toVowel


toVowel :: Int -> Either Int String
toVowel value
  | isVowel value = Right [chr value]
  | otherwise     = Left value


isVowel :: Int -> Bool
isVowel value = value `elem` vowels


vowels :: [Int]
vowels = [ord 'a', ord 'e', ord 'i', ord 'o', ord 'u']
