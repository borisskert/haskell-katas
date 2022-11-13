module Codewars.G964.Epidemy where

--  https://www.codewars.com/kata/566543703c72200f0b0000c9/train/haskell

epidemic :: Int -> Int -> Double -> Double -> Double -> Double -> Int
epidemic tm n s0 i0 b a = findMax 0 s0 i0
  where
    dt = fromIntegral tm / fromIntegral n :: Double

    findMax :: Double -> Double -> Double -> Int
    findMax r s i
      | i > nextI = floor i
      | otherwise = findMax nextR nextS nextI
      where
        nextS = s - dt * b * s * i :: Double
        nextI = i + dt * (b * s * i - a * i) :: Double
        nextR = r + dt * i * a :: Double
