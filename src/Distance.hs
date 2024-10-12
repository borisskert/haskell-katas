module Distance (distance) where

-- https://www.codewars.com/kata/58dced7b702b805b200000be/train/haskell

import Preloaded (Point(..))

distance :: Point -> Point -> Double
distance p1 p2 = sqrt ((x p1 - x p2) ^ 2 + (y p1 - y p2) ^ 2)

-- #againwhatlearned: destructure Point structure:
-- distance (Point x1 y1) (Point x2 y2) = ...
