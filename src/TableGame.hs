module TableGame where

-- https://www.codewars.com/kata/58aa7f18821a769a7d000190/train/haskell

tableGame :: [[Int]] -> Maybe [Int]
tableGame xs
  | valid = Just result
  | otherwise = Nothing
  where
    northwest = xs !! 0 !! 0
    north = xs !! 0 !! 1
    northeast = xs !! 0 !! 2

    west = xs !! 1 !! 0
    center = xs !! 1 !! 1
    east = xs !! 1 !! 2

    southwest = xs !! 2 !! 0
    south = xs !! 2 !! 1
    southeast = xs !! 2 !! 2

    result = [northwest, northeast, southwest, southeast]

    valid =
      north == northwest + northeast
        && east == northeast + southeast
        && south == southeast + southwest
        && west == northwest + southwest
        && center == northwest + northeast + southwest + southeast
