module Codewars.G964.Bankerplan where

--  https://www.codewars.com/kata/56445c4755d0e45b8c00010a/train/haskell

fortune :: Int -> Double -> Int -> Int -> Double -> Bool
fortune f0 p c0 n i
  | f0 < c0 = False
  | f0 == c0 = True
  | otherwise = go f0 c0 n
  where
    go :: Int -> Int -> Int -> Bool
    go f0 _ 1
      | f0 >= 0 = True
      | otherwise = False
    go f0 c0 n = go f1 c1 (n - 1)
      where
        f0' = fromIntegral f0 :: Double
        c0' = fromIntegral c0 :: Double
        f1 = ceiling $ f0' * (1 + p / 100.0) - c0' :: Int
        c1 = ceiling $ c0' * (1 + i / 100.0) :: Int
