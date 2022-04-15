module Pangram where

-- https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/haskell

import Data.Char (toLower)
import Data.List (nub, sort)

isPangram :: String -> Bool
isPangram = (== alphabet) . sort . filter (`elem` alphabet) . nub . map toLower
  where
    alphabet = ['a' .. 'z']
