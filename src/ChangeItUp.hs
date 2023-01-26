module ChangeItUp (change) where

-- https://www.codewars.com/kata/58039f8efca342e4f0000023/train/haskell

import Data.Char (chr, isLetter, ord, toLower, toUpper)

change :: String -> String
change = map changeItUp

changeItUp :: Char -> Char
changeItUp c
  | not . isLetter $ c = c
  | isVovel next = toUpper next
  | otherwise = next
  where
    lower = toLower c
    next = increment lower

isVovel :: Char -> Bool
isVovel = (`elem` "aeiou")

increment :: Char -> Char
increment 'z' = 'a'
increment c = chr . (+ 1) . ord $ c

-- #againwhatlearned
-- use `succ` function to increment Chars
