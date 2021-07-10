module AreaPerimeter where

-- https://www.codewars.com/kata/5ab6538b379d20ad880000ab/train/haskell

areaOrPerimeter :: Double -> Double -> Double
areaOrPerimeter length width
  | length == width = length^2
  | otherwise = (length + width) * 2
