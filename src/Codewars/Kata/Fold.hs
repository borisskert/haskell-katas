module Codewars.Kata.Fold where

--  https://www.codewars.com/kata/58f0ba42e89aa6158400000e/train/haskell

foldTo :: Double -> Maybe Int
foldTo distance
  | distance > 0.0001 = Just (floor $ (+) 1.0 $ log2 $ distance / 0.0001)
  | distance < 0 = Nothing
  | otherwise = Just (0)


log2 :: Double -> Double
log2 x = log x / log 2.0
