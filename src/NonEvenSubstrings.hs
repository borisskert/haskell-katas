module NonEvenSubstrings where

-- https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/train/haskell

import Data.List.Split.Internals (divvy)

solve :: String -> Int
solve xs = length odds
  where
    size = length xs
    substrings = concatMap (\i -> divvy i 1 xs) [1 .. size] :: [String]
    odds = filter odd . map read $ substrings :: [Int]
