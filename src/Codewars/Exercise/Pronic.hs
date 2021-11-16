module Codewars.Exercise.Pronic where

-- https://www.codewars.com/kata/55b1e5c4cbe09e46b3000034/train/haskell

isPronic :: Integer -> Bool
isPronic 0 = True
isPronic k = floor root /= ceiling root && floor root * ceiling root == k
  where
    root = sqrt . fromIntegral $ k :: Double
