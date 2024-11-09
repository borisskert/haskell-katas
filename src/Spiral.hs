module Spiral (createBox) where

-- https://www.codewars.com/kata/63b84f54693cb10065687ae5/train/haskell

createBox :: Int -> Int -> [[Int]]
createBox m = map (`makeFlatRow` m) . makeRow

makeFlatRow :: Int -> Int -> [Int]
makeFlatRow max = map min . makeRow
  where
    min x
      | x >= max = max
      | otherwise = x

makeRow :: Int -> [Int]
makeRow x
  | even x = row ++ reverse row
  | otherwise = row ++ [half + 1] ++ reverse row
  where
    half = x `div` 2
    row = [1 .. half]
