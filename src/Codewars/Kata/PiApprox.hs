module Codewars.Kata.PiApprox where

--  https://www.codewars.com/kata/550527b108b86f700000073f/train/haskell

import Data.Ratio (Ratio, denominator, numerator, (%))

trunc10Dble :: Double -> Double
trunc10Dble d = (fromInteger . truncate $ d * (10 ^ 10)) / (10.0 ^^ 10)

iterPi :: Double -> (Integer, Double)
iterPi epsilon = count (1 % 1, 0.0, 1)
  where
    count :: (Ratio Integer, Double, Integer) -> (Integer, Double)
    count (lastRatio, quarter, counter)
      | diff <= epsilon = (counter, trunc10Dble nextPi)
      | otherwise = count (nextRatio, nextQuarter, counter + 1)
      where
        nextSign = negate . signum $ lastRatio
        nextRatio = (1 % (denominator lastRatio + 2)) * nextSign
        nextQuarter = approxValue lastRatio + quarter
        nextPi = nextQuarter * 4
        diff = abs (nextPi - pi)

approxValue :: Ratio Integer -> Double
approxValue ratio = fromInteger int + frac
  where
    n = numerator ratio :: Integer
    d = denominator ratio :: Integer
    int = n `div` d
    frac = fromInteger (n - int * d) / fromInteger d
