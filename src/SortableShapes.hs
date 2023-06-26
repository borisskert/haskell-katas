{-# LANGUAGE InstanceSigs #-}

module SortableShapes (Shape (..)) where

-- https://www.codewars.com/kata/586669a8442e3fc307000048/train/haskell

data Shape
  = CustomShape {area :: Double}
  | Square {side :: Double}
  | Circle {radius :: Double}
  | Triangle {base :: Double, height :: Double}
  | Rectangle {width :: Double, height :: Double}
  deriving (Show, Eq)

instance Ord Shape where
  (<=) :: Shape -> Shape -> Bool
  (<=) a b = areaOf a <= areaOf b

areaOf :: Shape -> Double
areaOf (Square side) = side * side
areaOf (Circle radius) = radius * radius * pi
areaOf (Triangle a b) = 0.5 * a * b
areaOf (Rectangle a b) = a * b
areaOf (CustomShape a) = a
