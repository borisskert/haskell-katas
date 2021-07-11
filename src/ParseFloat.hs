module ParseFloat where

import Data.Maybe

-- https://www.codewars.com/kata/57a386117cb1f31890000039/train/haskell

import Text.Read (readMaybe)

parseFloat :: String -> Maybe Float
parseFloat = readMaybe
