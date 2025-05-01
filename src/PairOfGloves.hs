module PairOfGloves (numberOfPairs) where

-- https://www.codewars.com/kata/58235a167a8cb37e1a0000db/train/haskell

import Data.List (nub)
import Preloaded (Colour'' (..))

numberOfPairs :: [Colour''] -> Int
numberOfPairs colours =
  sum
    . map (\colour -> (`div` 2) . length . filter (== colour) $ colours)
    $ unique
  where
    unique = nub colours
