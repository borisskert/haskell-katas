module Codewars.G964.Newaverage where

-- https://www.codewars.com/kata/569b5cec755dd3534d00000f/train/haskell

newAvg :: [Double] -> Double -> Maybe Int
newAvg xs navg
  | lastValue > 0 = Just (ceiling lastValue)
  | otherwise = Nothing
  where
    lastValue = navg * (fromIntegral . (+ 1) . length $ xs) - sum xs :: Double
