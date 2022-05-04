module WeIrDStRiNgCaSe where

-- https://www.codewars.com/kata/52b757663a95b11b3d00062d/train/haskell

import Data.Char (toLower, toUpper)

toWeirdCase :: String -> String
toWeirdCase = unwords . map weirdUp . words
  where
    weirdUp :: String -> String
    weirdUp [] = []
    weirdUp (c : cs) = toUpper c : weirdDown cs

    weirdDown :: String -> String
    weirdDown [] = []
    weirdDown (c : cs) = toLower c : weirdUp cs
