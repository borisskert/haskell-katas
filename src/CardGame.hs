module CardGame (solution) where

-- https://www.codewars.com/kata/633874ed198a4c00286aa39d/train/haskell

solution :: [Int] -> [Int] -> [Int] -> Bool
solution [_, _, frank1, frank2] [sam1, sam2, _, _] [tom1, tom2, _, _]
  | frank1 < sam1 = False
  | frank1 < tom1 = False
  | frank2 < sam2 = False
  | otherwise = frank2 > tom2
