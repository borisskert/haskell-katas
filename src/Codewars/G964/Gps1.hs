module Codewars.G964.Gps1 where

--  https://www.codewars.com/kata/56484848ba95170a8000004d/train/haskell

gps :: Int -> [Double] -> Int
gps _ [] = 0
gps _ [_] = 0
gps s x = floor $ maximum $ perHour
  where
    distances = toDistances x :: [Double]
    perSecond = map (/ (fromIntegral s)) distances :: [Double]
    perHour = map (* 3600.0) perSecond :: [Double]


toDistances :: [Double] -> [Double]
toDistances [_] = []
toDistances [s1, s2] = [s2 - s1]
toDistances (s1:s2:rest) = [s2 - s1] ++ toDistances (s2:rest)
