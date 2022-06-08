module TurnWithACompass (direction) where

--  https://www.codewars.com/kata/61a8c3a9e5a7b9004a48ccc2/train/haskell

import Preloaded (Direction (..))

direction :: Direction -> Int -> Direction
direction facing turn = (!! count) . dropWhile (/= facing) $ directions
  where
    directions = cycle [N, NE, E, SE, S, SW, W, NW]
    count = (`div` 45) . (`mod` 360) $ turn
