module Codewars.Kata.NumberStar where

-- https://www.codewars.com/kata/5631213916d70a0979000066/train/haskell

import Data.List (intercalate)
    
pattern :: Int -> String
pattern n = intercalate "\n" . map toBar $ [1..n]
  where
    toBar :: Int -> String
    toBar 1 = "1"
    toBar n = "1" ++ replicate (n - 1) '*' ++ show n
