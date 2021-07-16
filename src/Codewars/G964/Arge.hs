module Codewars.G964.Arge where

--  https://www.codewars.com/kata/563b662a59afc2b5120000c6/train/haskell

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p
  | p0 < p = 1 + nbYear pNext percent aug p
  | otherwise = 0
  where
    pNext = floor ((fromIntegral p0) * (1.0 + (percent / 100))) + aug :: Int
