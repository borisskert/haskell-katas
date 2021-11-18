module Float where

-- https://www.codewars.com/kata/5143d157ceb46d6a61000001/train/haskell

solution :: Float -> Float
solution = (/ 10 ^ n) . fromIntegral . round . (* 10 ^ n)
  where
    n = 2
