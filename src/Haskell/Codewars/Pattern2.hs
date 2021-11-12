module Haskell.Codewars.Pattern2 where

-- https://www.codewars.com/kata/55736129f78b30311300010f/train/haskell

import Data.List (intercalate)

pattern :: Int -> String
pattern n = intercalate "\n" . map toRow $ [1..n]
  where
    toRow :: Int -> String
    toRow x = concatMap show [x..n]
