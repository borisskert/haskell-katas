module Fix where

-- https://www.codewars.com/kata/5bf774a81505a7413400006a/train/haskell

import Data.List.Split (splitOn)
import Data.Char (toUpper)
import Data.List (intercalate)


fix' :: String -> String
fix' = intercalate ". " . map capitalize . splitOn ". "
  where
    capitalize :: String -> String
    capitalize [] = []
    capitalize text = toUpper (head text) : tail text
