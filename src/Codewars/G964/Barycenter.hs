module Codewars.G964.Barycenter where

--  https://www.codewars.com/kata/5601c5f6ba804403c7000004/train/haskell

barTriang :: (Double, Double) -> (Double, Double) -> (Double, Double) -> (Double, Double)
barTriang (xa, ya) (xb, yb) (xc, yc) = (round4 xo, round4 yo)
  where
    xo = (xa + xb + xc) / 3
    yo = (ya + yb + yc) / 3


--https://stackoverflow.com/a/12450771
round4 :: Double -> Double
round4 f = (fromInteger $ round $ f * (10^n)) / (10.0^^n)
  where n = 4
