module Kata.ClockyMcClockFace (whatTimeIsIt) where

--  https://www.codewars.com/kata/59752e1f064d1261cb0000ec/train/haskell

import Text.Printf (printf)

whatTimeIsIt :: Float -> String
whatTimeIsIt angle
  | fullHours == 0 = printf "12:%02d" fullMinutes
  | otherwise = printf "%02d:%02d" fullHours fullMinutes
  where
    fullHours = (`mod` 12) . floor . (/ 30.0) $ angle :: Int
    hoursAngle = fromIntegral fullHours * 30.0 :: Float
    fullMinutes = (`mod` 60) . floor . (* 60) . (/ 30) $ angle - hoursAngle :: Int
