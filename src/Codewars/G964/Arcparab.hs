module Codewars.G964.Arcparab where

--  https://www.codewars.com/kata/562e274ceca15ca6e70000d3/train/haskell

import Data.List.Split (divvy)

lenCurve :: Integer -> Double
lenCurve = sum . map (oppositeLeg . diff) . divvy 2 1 . map (\x -> (x, f x)) . xs

diff :: [(Double, Double)] -> (Double, Double)
diff ((a1, b1) : (a2, b2) : _) = (a2 - a1, b2 - b1)

xs :: Integer -> [Double]
xs n = [0.0, step .. 1.0]
  where
    step = (1.0 /) . fromIntegral $ n

f :: Double -> Double
f x = x * x

oppositeLeg :: (Double, Double) -> Double
oppositeLeg (a, b) = sqrt $ a * a + b * b
