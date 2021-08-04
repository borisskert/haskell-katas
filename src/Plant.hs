module Plant where

-- https://www.codewars.com/kata/58941fec8afa3618c9000184/train/haskell

growingPlant :: Int -> Int -> Int -> Int
growingPlant upSpeed downSpeed desiredHeight = go upSpeed downSpeed desiredHeight 1 0
  where
    go :: Int -> Int -> Int -> Int -> Int -> Int
    go upSpeed downSpeed desiredHeight day actualHeight
      | desiredHeight <= actualHeight + upSpeed = day
      | otherwise = go upSpeed downSpeed desiredHeight (day + 1) (actualHeight + upSpeed - downSpeed)
