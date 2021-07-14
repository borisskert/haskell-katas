module Codewars.G964.Accumule where

--  https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/haskell

import Data.List (intercalate)
import Data.Char (toUpper, toLower)


accum :: [Char] -> [Char]
accum items = intercalate "-". map capitalize . map repeating $ zip [1..] items


repeating :: (Int, Char) -> [Char]
repeating (count, char) = take count (repeat char)


capitalize :: [Char] -> [Char]
capitalize word = [toUpper (head word)] ++ map toLower (tail word)
