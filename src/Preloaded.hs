module Preloaded where

import Data.List.Split (divvy)

data Shape
  = Rectangle {width, length :: Double}
  | Circle1 {radius1 :: Double}
  deriving (Eq, Show)

data RPSLS = Rock | Paper | Scissors | Lizard | Spock deriving (Show, Eq)

data Parity = EITHER | EVEN | ODD deriving (Show, Eq)

data Suit = White' | Yellow' | Green' | Blue' | Red' deriving (Eq)

data Direction = N | NE | E | SE | S | SW | W | NW deriving (Eq, Show, Bounded)

data Comparison = Left | Right | Balance deriving (Show, Eq, Enum, Bounded)

data Colour'' = Red'' | Blue'' | Green'' | Gray'' | Black'' | Purple'' deriving (Show, Eq, Ord, Enum, Bounded)

data Like = Like | Dislike deriving (Show, Eq)

isWaveSorted :: (Ord x) => [x] -> Bool
isWaveSorted xs
  | all (\(a : b : c : _) -> a >= b && b <= c) divvinger = True
  | otherwise = all (\(a : b : c : _) -> a <= b && b >= c) divvinger
  where
    divvinger = divvy 3 2 xs

data Tree = Node {val :: Int, left, right :: Maybe Tree}

data Point = Point
  { xValue :: Double,
    yValue :: Double
  }
  deriving (Show, Eq)

data Circle = Circle
  { center :: Point,
    radius :: Double
  }
  deriving (Show, Eq)

newtype Player = Player {name :: String} deriving (Show, Eq)

animals = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig"]

elements = ["Wood", "Fire", "Earth", "Metal", "Water"]

data Colour = White | Black deriving (Show, Eq, Ord, Enum, Bounded)
