module UppercaseVowels where

-- https://www.codewars.com/kata/57a1e23853ba339caf001000/train/haskell

import Data.Char (toUpper)

uppercaseVowels :: String -> String
uppercaseVowels = map uppercaseVowel
  where
    uppercaseVowel :: Char -> Char
    uppercaseVowel c
      | c `elem` "aeiou" = toUpper c
      | otherwise = c
