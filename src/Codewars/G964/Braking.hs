module Codewars.G964.Braking (dist, speed) where

--  https://www.codewars.com/kata/565c0fa6e3a7d39dee000125/train/haskell

g :: Double
g = 9.81

dist :: Double -> Double -> Double
dist v mu = v' * v' / (2 * mu * g) + v'
  where
    v' = toMetersPerSecond v

speed :: Double -> Double -> Double
speed d mu = toKmPerHour . fst $ quadratic a b c
  where
    a = 1 / (2 * mu * g)
    b = 1
    c = negate d

--https://en.wikipedia.org/wiki/Quadratic_formula
quadratic :: Double -> Double -> Double -> (Double, Double)
quadratic a b c = (x1, x2)
  where
    x1 = (negate b + sqrt (b * b - 4 * a * c)) / (2 * a)
    x2 = (negate b - sqrt (b * b - 4 * a * c)) / (2 * a)

toKmPerHour :: Double -> Double
toKmPerHour = (/ 1000) . (* 3600)

toMetersPerSecond :: Double -> Double
toMetersPerSecond = (* 1000) . (/ 3600)
