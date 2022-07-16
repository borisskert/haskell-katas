module Kata.StringAverage (averageString) where

-- https://www.codewars.com/kata/5966847f4025872c7d00015b/train/haskell

import Data.List
import Data.Maybe

numbers =
  [ "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine"
  ]

averageString :: String -> String
averageString string
  | isNothing values = "n/a"
  | isNothing average = "n/a"
  | otherwise = (numbers !!) . floor . fromJust $ average
  where
    values = readNumbers string :: Maybe [Float]
    average = avg . fromJust $ values

readNumbers :: String -> Maybe [Float]
readNumbers string
  | Nothing `elem` values = Nothing
  | otherwise = Just . map (fromIntegral . fromJust) $ values
  where
    values = map (`elemIndex` numbers) . words $ string :: [Maybe Int]

avg :: [Float] -> Maybe Float
avg numbers
  | count == 0 = Nothing
  | otherwise = Just . (/ fromIntegral count) $ sum numbers
  where
    count = length numbers :: Int
