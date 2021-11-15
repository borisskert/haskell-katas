module Kata (pigLatin) where

-- https://www.codewars.com/kata/58702c0ca44cfc50dc000245/train/haskell

pigLatin :: String -> String
pigLatin word
  | length word > 3 = tail word ++ [head word] ++ "ay"
  | otherwise = word
