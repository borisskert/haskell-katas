module Haskell.Codewars.KeypadEntry where

import Data.Char (toUpper)

--  https://www.codewars.com/kata/54a2e93b22d236498400134b/train/haskell

presses :: String -> Int
presses cs = sum . map (pressesFor . toUpper) $ cs
  where
    pressesFor :: Char -> Int
    pressesFor '1' = 1
    pressesFor 'A' = 1
    pressesFor 'B' = 2
    pressesFor 'C' = 3
    pressesFor '2' = 4
    pressesFor 'D' = 1
    pressesFor 'E' = 2
    pressesFor 'F' = 3
    pressesFor '3' = 4
    pressesFor 'G' = 1
    pressesFor 'H' = 2
    pressesFor 'I' = 3
    pressesFor '4' = 4
    pressesFor 'J' = 1
    pressesFor 'K' = 2
    pressesFor 'L' = 3
    pressesFor '5' = 4
    pressesFor 'M' = 1
    pressesFor 'N' = 2
    pressesFor 'O' = 3
    pressesFor '6' = 4
    pressesFor 'P' = 1
    pressesFor 'Q' = 2
    pressesFor 'R' = 3
    pressesFor 'S' = 4
    pressesFor '7' = 5
    pressesFor 'T' = 1
    pressesFor 'U' = 2
    pressesFor 'V' = 3
    pressesFor '8' = 4
    pressesFor 'W' = 1
    pressesFor 'X' = 2
    pressesFor 'Y' = 3
    pressesFor 'Z' = 4
    pressesFor '9' = 5
    pressesFor '*' = 1
    pressesFor ' ' = 1
    pressesFor '0' = 2
    pressesFor '#' = 1
    pressesFor c = error ("Undefined: " ++ [c])
