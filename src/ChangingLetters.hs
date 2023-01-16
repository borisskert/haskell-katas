module ChangingLetters (swap) where

-- https://www.codewars.com/kata/5831c204a31721e2ae000294/train/haskell

import Data.Char (toUpper)

swap :: String -> String
swap = map swapLetter

swapLetter :: Char -> Char
swapLetter c
  | isVowel c = toUpper c
  | otherwise = c

isVowel :: Char -> Bool
isVowel = (`elem` "aeiou")
