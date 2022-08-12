module MineLocation where

--  https://www.codewars.com/kata/528d9adf0e03778b9e00067e/train/haskell

import Data.Array (Array, assocs)

mineLocation :: Array (Int, Int) Int -> Maybe (Int, Int)
mineLocation field
  | null mines = Nothing
  | otherwise = Just . fst . head $ mines
  where
    mines = filter ((== 1) . snd) . assocs $ field
