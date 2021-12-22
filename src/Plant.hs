module Plant where

-- https://www.codewars.com/kata/58bf97cde4a5edfd4f00008d/train/haskell

plantDoubling :: Int -> Int
plantDoubling 0 = 0
plantDoubling 1 = 1
plantDoubling x
  | even x = plantDoubling (x `div` 2)
  | otherwise = 1 + plantDoubling (x `div` 2)
