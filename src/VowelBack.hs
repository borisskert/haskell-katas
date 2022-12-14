module VowelBack where

--  https://www.codewars.com/kata/57cfd92c05c1864df2001563/train/haskell

import Data.Char (chr, ord)

vowelBack :: String -> String
vowelBack = map move

move :: Char -> Char
move 'c' = 'b'
move 'o' = 'n'
move 'd' = 'a'
move 'e' = 'a'
move c
  | moved `elem` "code" = c
  | otherwise = moved
  where
    offset
      | isVowel c = -5
      | otherwise = 9
    moved = shift offset c

shift :: Int -> Char -> Char
shift i = chr . (+ offset) . (`mod` 26) . (+ 26) . (+ i) . subtract offset . ord
  where
    offset = ord 'a'

isVowel :: Char -> Bool
isVowel = (`elem` "aeiou")
