module Geometry (circleArea) where

import Preloaded (Point(..), Circle(..))

-- https://www.codewars.com/kata/58e3f824a33b52c1dc0001c0/train/haskell

circleArea :: Circle -> Double
circleArea (Circle _ r) = r * r * pi
