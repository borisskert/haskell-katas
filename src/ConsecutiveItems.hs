module ConsecutiveItems (consecutive) where

-- https://www.codewars.com/kata/5f6d533e1475f30001e47514/train/haskell

consecutive :: [Int] -> Int -> Int -> Bool
consecutive [] _ _ = False
consecutive [_] _ _ = False
consecutive (x:y:others) a b
  | a == x && b == y = True 
  | a == y && b == x = True 
  | otherwise = consecutive (y : others) a b
