module Preloaded where

data Shape
  = Rectangle {width, length :: Double}
  | Circle {radius :: Double}
  deriving (Eq, Show)

data RPSLS = Rock | Paper | Scissors | Lizard | Spock deriving (Show,Eq)

data Parity = EITHER | EVEN | ODD deriving (Show,Eq)
