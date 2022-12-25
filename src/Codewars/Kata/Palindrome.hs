module Codewars.Kata.Palindrome where

--  https://www.codewars.com/kata/53046ceefe87e4905e00072a/train/haskell

import Data.Char (isDigit, isLetter, toLower)

isPalindrome :: String -> Bool
isPalindrome = isPalindromic . map toLower . filter (anyOf [isLetter, isDigit])

anyOf :: [a -> Bool] -> a -> Bool
anyOf [] _ = False
anyOf (f : fs) x
  | f x = True
  | otherwise = anyOf fs x

isPalindromic :: (Eq a) => [a] -> Bool
isPalindromic [] = True
isPalindromic [_] = True
isPalindromic xs
  | head xs == last xs = isPalindromic . tail . init $ xs
  | otherwise = False

-- #againwhatlearned
-- use `isAlphaNum` function from `Data.Char` module
