module DetermineTheLogarithmBase.Kata (guessBase) where

-- https://www.codewars.com/kata/5ae1dcde9c0e489ae00019fc/train/haskell

guessBase :: (Double -> Double) -> Double
guessBase log = find 2.0
  where
    find n
      | roundN 20 x == 1 = n
      | otherwise = find nextN
      where
        x = log n
        y = 1.0 / x
        nextN = n * y

roundN :: Int -> Double -> Double
roundN n = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
