module Codewars.Kata.Sort (twoSort) where

-- https://www.codewars.com/kata/57cfdf34902f6ba3d300001e/train/haskell

import Data.List (intercalate)

twoSort :: [String] -> String
twoSort = intercalate "***" . map (: []) . minimum
