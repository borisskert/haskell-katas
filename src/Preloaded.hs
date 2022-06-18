module Preloaded where

data Shape
  = Rectangle {width, length :: Double}
  | Circle {radius :: Double}
  deriving (Eq, Show)

data RPSLS = Rock | Paper | Scissors | Lizard | Spock deriving (Show,Eq)

data Parity = EITHER | EVEN | ODD deriving (Show,Eq)

data Suit = White | Yellow | Green | Blue | Red deriving (Eq)

data Direction = N | NE | E | SE | S | SW | W | NW deriving (Eq, Show, Bounded)

data Comparison = Left | Right | Balance deriving (Show, Eq, Enum, Bounded)
