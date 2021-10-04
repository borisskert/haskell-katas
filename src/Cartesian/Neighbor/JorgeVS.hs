module Cartesian.Neighbor.JorgeVS where

-- https://www.codewars.com/kata/58989a079c70093f3e00008d/train/haskell

cartesianNeighbor :: Int -> Int -> [(Int, Int)]
cartesianNeighbor x y =
  [ (x - 1, y - 1),
    (x - 1, y),
    (x - 1, y + 1),
    (x, y - 1),
    (x, y + 1),
    (x + 1, y - 1),
    (x + 1, y),
    (x + 1, y + 1)
  ]
