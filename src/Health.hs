module Health (updateHealth) where

-- https://www.codewars.com/kata/586c1cf4b98de0399300001d/train/haskell

updateHealth :: Double -> Double -> Double
updateHealth health damage
  | health < damage = 0
  | otherwise       = health - damage
