module RedKnight (redKnight) where

-- https://www.codewars.com/kata/5fc4349ddb878a0017838d0f/train/haskell

redKnight :: Int -> Int -> (String, Int)
redKnight knight pawn
  | even (knight + pawn) = ("White", pawn * 2)
  | otherwise = ("Black", pawn * 2)
