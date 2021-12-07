module Pillow where

import Data.List.Split (divvy)

-- https://www.codewars.com/kata/57d147bcc98a521016000320/train/haskell

pillow :: (String, String) -> Bool
pillow (a, b) =
  ("nB" `elem`)
    . divvy 2 1
    . concatMap (\(x, y) -> [x, y])
    $ zip a b
