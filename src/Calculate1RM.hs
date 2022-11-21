module Calculate1RM where

-- https://www.codewars.com/kata/595bbea8a930ac0b91000130/train/haskell

type Weight = Int

type Reps = Int

calculate1RM :: Weight -> Reps -> Weight
calculate1RM _ 0 = 0
calculate1RM w 1 = w
calculate1RM w r =
  round
    . maximum
    . map (\f -> f w' r')
    $ [epley, mcGlothin, lombardi]
  where
    w' = fromIntegral w
    r' = fromIntegral r

epley :: Double -> Double -> Double
epley w r = w * (1 + (r / 30))

mcGlothin :: Double -> Double -> Double
mcGlothin w r = (100 * w) / (101.3 - 2.67123 * r)

lombardi :: Double -> Double -> Double
lombardi w r = w * (r ** 0.1)
