module Kata where

--  https://www.codewars.com/kata/574b1916a3ebd6e4fa0012e7/train/haskell

import Data.Char (isLower, toLower, toUpper)


isOpposite :: String -> String -> Bool
isOpposite "" "" = False
isOpposite s1 s2 = map toggleCase s1 == s2


toggleCase :: Char -> Char
toggleCase char
  | isLower char = toUpper char
  | otherwise    = toLower char
