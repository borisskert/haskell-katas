module Codewars.Kata.XO where

--  https://www.codewars.com/kata/55908aad6620c066bc00002a/train/haskell

import Data.Char (toLower)


xo :: String -> Bool
xo str = (length $ filter (== 'x') $ lowerCase) == (length $ filter (== 'o') $ lowerCase)
  where
    lowerCase = map toLower $ str
