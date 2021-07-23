module Kata where

--  https://www.codewars.com/kata/59cfc000aeb2844d16000075/train/haskell

import Data.Char (toLower, toUpper)


capitalize :: [Char] -> [[Char]]
capitalize xs = [capitalizeUp xs, capitalizeDown xs]


capitalizeUp :: [Char] -> [Char]
capitalizeUp [] = []
capitalizeUp xs = [toUpper (head xs)] ++ capitalizeDown (tail xs)


capitalizeDown :: [Char] -> [Char]
capitalizeDown [] = []
capitalizeDown xs = [toLower (head xs)] ++ capitalizeUp (tail xs)
