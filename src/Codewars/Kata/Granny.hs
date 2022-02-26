module Codewars.Kata.Granny where

-- https://www.codewars.com/kata/5536a85b6ed4ee5a78000035/train/haskell

import Data.List.Split (divvy)
import Data.Maybe (mapMaybe)

tour :: [String] -> [(String, String)] -> [(String, Double)] -> Integer
tour friends fTowns distTable = floor distance
  where
    cities = mapMaybe (`lookup` fTowns) friends :: [String]
    distances = mapMaybe (`lookup` distTable) cities :: [Double]
    distance =
      (+ last distances)
        . (+ head distances)
        . sum
        . map (\(a : c : _) -> oppositeLeg a c)
        . divvy 2 1
        $ distances

-- pythagoras
oppositeLeg :: Double -> Double -> Double
oppositeLeg a c = sqrt . (+ negate (a * a)) $ (c * c)
