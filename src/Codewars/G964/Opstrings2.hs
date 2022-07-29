module Codewars.G964.Opstrings2 where

--  https://www.codewars.com/kata/56dbe7f113c2f63570000b86/train/haskell

import Data.List (intercalate)

rot :: [Char] -> [Char]
rot = format . rotate . toSquare

selfieAndRot :: [Char] -> [Char]
selfieAndRot strng = format largeSquare
  where
    square = toSquare strng
    rotated = rotate square
    n = width square
    largeSquare = padRight n square ++ padLeft n rotated

oper :: (String -> String) -> String -> String
oper fct = fct

type Square = [String]

rotate :: Square -> Square
rotate = map reverse . reverse

toSquare :: String -> Square
toSquare = lines

format :: Square -> String
format = intercalate "\n"

width :: Square -> Int
width = maximum . map length

padLeft :: Int -> Square -> Square
padLeft n = map (padding ++)
  where
    padding = replicate n '.'

padRight :: Int -> Square -> Square
padRight n = map (++ padding)
  where
    padding = replicate n '.'
