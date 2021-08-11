module Codewars.G964.Potatoes where

-- https://www.codewars.com/kata/58ce8725c835848ad6000007/train/haskell

potatoes :: Int -> Int -> Int -> Int
potatoes p0 w0 p1 = floor finalWeight
  where
    initialPercent = fromIntegral p0 :: Double
    initialWeight = fromIntegral w0 :: Double
    finalPercent = fromIntegral p1 :: Double
    dryMatter = initialWeight * (100.0 - initialPercent) / 100.0 :: Double
    finalWeight = 100.0 * dryMatter / (100.0 - finalPercent) :: Double
