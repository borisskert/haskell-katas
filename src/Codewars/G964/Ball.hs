module Codewars.G964.Ball where

import Data.List.Split (divvy)

--  https://www.codewars.com/kata/566be96bb3174e155300001b/train/haskell

maxBall :: Int -> Int
maxBall v0 = length heights
  where
    heights = takeWhile (\(a : b : _) -> a < b) . divvy 2 1 . map snd . iterate throw $ ball0
    v0mps = (/ 3600) . (* 1000.0) . fromIntegral $ v0 :: Double
    ball0 = (v0mps, 0.0)

--           speed   height
type Ball = (Double, Double)

throw :: Ball -> Ball
throw (speed, height) = (nextSpeed, nextHeight)
  where
    deltaTime = 0.1
    gravity = 9.81
    nextSpeed = speed - gravity * deltaTime
    nextHeight = height + speed * deltaTime - 0.5 * gravity * deltaTime * deltaTime
