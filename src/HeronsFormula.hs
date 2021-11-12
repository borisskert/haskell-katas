module HeronsFormula where

heron :: Double -> Double -> Double -> Double
heron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2
