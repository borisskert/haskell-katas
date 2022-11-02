module Codewars.PigLatin (pigLatin) where

--  https://www.codewars.com/kata/558878ab7591c911a4000007/train/haskell

import Data.Char (isDigit, toLower)

pigLatin :: String -> Maybe String
pigLatin word
  | any isDigit word = Nothing
  | otherwise = Just . toPigLatin . map toLower $ word

toPigLatin :: String -> String
toPigLatin word
  | isVowel . head $ word = word ++ "way"
  | otherwise = rest ++ consonants ++ "ay"
  where
    consonants = takeWhile (not . isVowel) word
    rest = dropWhile (not . isVowel) word

isVowel :: Char -> Bool
isVowel = (`elem` "aeiou")
