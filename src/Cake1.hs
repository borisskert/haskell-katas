module Cake1 where

-- https://www.codewars.com/kata/5805ed25c2799821cb000005/train/haskell

import Data.Char (ord)


cake :: Int -> String -> String
cake x y
  | onCarpet > total = "Fire!"
  | otherwise = "That was close!"
  where
    total = round2 . (* 0.7) . fromIntegral $ x :: Double
    onCarpet = fromIntegral . sum . zipWith (curry toValue) [1..] $ y :: Double
      where
        toValue :: (Int, Char) -> Int
        toValue (index, letter)
          | even index = ord letter - offset + 1
          | otherwise = ord letter
          where
            offset = ord 'a'


round2 :: Double -> Double
round2 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where n = 2
