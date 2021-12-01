module Codewars.Palindromes where

-- https://www.codewars.com/kata/56a6ce697c05fb4667000029/train/haskell

nextPal :: Int -> Int
nextPal n = read . head . filter isPalindrom . map show $ [(n + 1), (n + 2) ..]

isPalindrom :: String -> Bool
isPalindrom [] = True
isPalindrom [_] = True
isPalindrom x = head x == last x && isPalindrom (init . tail $ x)
