module NewNumerals where

-- https://www.codewars.com/kata/5888445107a0d57711000032/train/haskell

import Data.Char (chr, ord)

newNumeralSystem :: Char -> [String]
newNumeralSystem = map format . sums . newNumeralToInt
  where
    format :: (Int, Int) -> String
    format (a, b) = intToNewNumeral a : " + " ++ [intToNewNumeral b]

sums :: Int -> [(Int, Int)]
sums i = map (\x -> (x, i - x)) $ [0 .. (i `div` 2)]

newNumeralToInt :: Char -> Int
newNumeralToInt = (+ (- offset)) . ord
  where
    offset = ord 'A'

intToNewNumeral :: Int -> Char
intToNewNumeral = chr . (+ offset)
  where
    offset = ord 'A'
