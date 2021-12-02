module PointDistance where

import Point

-- https://www.codewars.com/kata/58dceee2c9613aacb40000b9/train/haskell

distanceBetweenPoints :: Point -> Point -> Float
distanceBetweenPoints (Point a1 a2 a3) (Point b1 b2 b3) = sqrt (c1 ^ 2 + c2 ^ 2 + c3 ^ 2)
  where
    c1 = b1 - a1
    c2 = b2 - a2
    c3 = b3 - a3
