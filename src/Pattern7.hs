module Pattern7 (pattern) where

-- https://www.codewars.com/kata/557592fcdfc2220bed000042/train/haskell

import Data.List (intercalate)

pattern :: Int -> String
pattern i =
  unlines
    . map (\x -> concatMap show . take i . drop x $ numbers)
    $ [0 .. (i - 1)]
  where
    numbers = cycle [1 .. i] :: [Int]
