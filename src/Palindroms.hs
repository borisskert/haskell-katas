module Palindroms where

--  https://www.codewars.com/kata/57a1fd2ce298a731b20006a4/train/haskell

import Data.Char (toLower)


isPalindrom :: String -> Bool
isPalindrom [] = True
isPalindrom [_] = True
isPalindrom (first:others)
  | toLower first == toLower (last others) = isPalindrom (init others)
  | otherwise = False
