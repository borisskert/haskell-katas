module Codewars.G964.Tortoise (race) where

--  https://www.codewars.com/kata/55e2adece53b4cdcb900006c/train/haskell

race :: Int -> Int -> Int -> Maybe (Int, Int, Int)
race v1 v2 g
  | v1 >= v2 = Nothing
  | otherwise = Just . toTime . toHours (v2 - v1) $ g

toHours :: Int -> Int -> Double
toHours v g = fromIntegral g / fromIntegral v

toTime :: Double -> (Int, Int, Int)
toTime h = (hours, minutesPart, secondsPart)
  where
    s = floor . (* 3600) $ h
    (minutes, secondsPart) = s `divMod` 60
    (hours, minutesPart) = minutes `divMod` 60
