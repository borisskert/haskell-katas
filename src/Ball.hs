module Ball where 

-- https://www.codewars.com/kata/5a40c250c5e284a76400008c/train/haskell

bouncingBall :: Double -> Double -> Int
bouncingBall height factor
  | height <= 1 = 0
  | otherwise = 1 + bouncingBall (height * factor) factor
