module WhiteOrBlack (colour) where

import Data.Char (ord)
import Preloaded (Colour (Black, White))

-- https://www.codewars.com/kata/563319974612f4fa3f0000e0/train/haskell

colour :: Char -> Int -> Colour
colour column row
  | odd (x + y) = White
  | otherwise = Black
  where
    x = ord column - 1
    y = row - 1
