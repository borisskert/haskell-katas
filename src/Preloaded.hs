module Preloaded where

import Data.List.Split (divvy)

data Shape
  = Rectangle {width, length :: Double}
  | Circle {radius :: Double}
  deriving (Eq, Show)

data RPSLS = Rock | Paper | Scissors | Lizard | Spock deriving (Show, Eq)

data Parity = EITHER | EVEN | ODD deriving (Show, Eq)

data Suit = White | Yellow | Green' | Blue' | Red' deriving (Eq)

data Direction = N | NE | E | SE | S | SW | W | NW deriving (Eq, Show, Bounded)

data Comparison = Left | Right | Balance deriving (Show, Eq, Enum, Bounded)

data Colour = Red | Blue | Green | Gray | Black | Purple deriving (Show, Eq, Ord, Enum, Bounded)

data Like = Like | Dislike deriving (Show, Eq)

isWaveSorted :: (Ord x) => [x] -> Bool
isWaveSorted xs
  | all (\(a : b : c : _) -> a >= b && b <= c) divvinger = True
  | otherwise = all (\(a : b : c : _) -> a <= b && b >= c) divvinger
  where
    divvinger = divvy 3 2 xs
