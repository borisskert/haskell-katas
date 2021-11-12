module Haskell.Codewars.Pattern where

-- https://www.codewars.com/kata/557341907fbf439911000022/train/haskell

import Data.List (intercalate)

pattern :: Int -> String
pattern n = intercalate "\n" . map (\x -> concatMap show [n, (n - 1) .. x]) $ [n, (n - 1) .. 1]
