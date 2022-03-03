module Lying where

-- https://www.codewars.com/kata/594cd799c08247a55a000004/train/haskell

isJohnLying :: (Int, Int) -> Int -> Bool
isJohnLying (x, y) steps
  | steps < xy = False
  | odd . (+ negate steps) $ xy = False
  | otherwise = True
  where
    xy = abs x + abs y
