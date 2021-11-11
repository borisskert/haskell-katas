module Preloaded where

data Shape
  = Rectangle {width, length :: Double}
  | Circle {radius :: Double}
  deriving (Eq, Show)
