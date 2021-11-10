module Codewars.G964.Commonsubs where

-- https://www.codewars.com/kata/5669a5113c8ebf16ed00004c/train/haskell

import Data.Char (toLower)
import Data.List (isInfixOf)
import Data.List.Split (divvy)

substringTest :: [Char] -> [Char] -> Bool
substringTest s1 =
  any (`isInfixOf` map toLower s1)
    . divvy 2 1
    . map toLower
