module Kata (replace) where

-- https://www.codewars.com/kata/57fb09ef2b5314a8a90001ed/train/haskell

replace :: String -> String
replace = map replaceVowel


replaceVowel :: Char -> Char
replaceVowel 'a' = '!'
replaceVowel 'e' = '!'
replaceVowel 'i' = '!'
replaceVowel 'o' = '!'
replaceVowel 'u' = '!'
replaceVowel 'A' = '!'
replaceVowel 'E' = '!'
replaceVowel 'I' = '!'
replaceVowel 'O' = '!'
replaceVowel 'U' = '!'
replaceVowel other = other
