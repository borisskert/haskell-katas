module TripleX (tripleX) where

-- https://www.codewars.com/kata/568dc69683322417eb00002c/train/haskell

tripleX :: String -> Bool
tripleX [] = False
tripleX [_] = False
tripleX [_, _] = False
tripleX (x1:x2:x3:others)
  | x1 == 'x' && x2 == 'x' && x3 == 'x' = True
  | x1 == 'x' = False
  | otherwise = tripleX (x2:x3:others)
