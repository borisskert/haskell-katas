module Vector (magnitude) where

-- https://www.codewars.com/kata/5806c2f897dba05dd900004c/train/haskell

magnitude :: [Double] -> Double
magnitude vector = sqrt (sum (map square vector))

square :: Double -> Double
square x = x * x
