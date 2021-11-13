module Hat where

data Color = WHITE | BLACK deriving (Show, Eq, Enum, Bounded)

data Player = P1 | P2 | P3 | P4 deriving (Show, Eq)

-- https://www.codewars.com/kata/58c21c4ff130b7cab400009e/train/haskell

guessHatColor :: (Color, Color, Color, Color) -> Player
guessHatColor (a, b, c, d)
  | b == c = P1
  | otherwise = P2
