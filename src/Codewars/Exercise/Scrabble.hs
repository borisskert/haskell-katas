module Codewars.Exercise.Scrabble where
import Codewars.Exercise.Scrabble.Score (dict)

-- https://www.codewars.com/kata/558fa34727c2d274c10000ae/train/haskell

import Data.Char (toUpper)

scrabbleScore :: String -> Int
scrabbleScore = sum . map (toScore . toUpper)

toScore :: Char -> Int
toScore c = or 0 . lookup c $ dict
  where
    or :: a -> Maybe a -> a
    or d Nothing = d
    or _ (Just x) = x


-- better practice:
-- import Data.Char (toUpper)
-- import Data.Maybe (mapMaybe)

-- scrabbleScore :: String -> Int
-- scrabbleScore = sum . mapMaybe (flip lookup dict . toUpper)
