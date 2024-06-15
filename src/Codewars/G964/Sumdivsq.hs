module Codewars.G964.Sumdivsq (listSquared, divisors) where

-- https://www.codewars.com/kata/55aa075506463dac6600010d/train/haskell

import Data.Maybe (catMaybes, mapMaybe)

listSquared :: Int -> Int -> [(Int, Int)]
listSquared m n = mapMaybe maybeSquared [m .. n]

maybeSquared :: Int -> Maybe (Int, Int)
maybeSquared n
  | isSquare squaredDivisors = Just (n, squaredDivisors)
  | otherwise = Nothing
  where
    squaredDivisors = sum . map (^ 2) . divisors $ n

divisors :: Int -> [Int]
divisors n = go 1 n
  where
    go :: Int -> Int -> [Int]
    go i n
      | i * i > n = []
      | m > 0 = go (i + 1) n
      | i == d = i : go (i + 1) n
      | otherwise = [i] ++ go (i + 1) n ++ [d]
      where
        (d, m) = n `divMod` i

isSquare :: Int -> Bool
isSquare n = root * root == n
  where
    root = (round . sqrt . fromIntegral) n :: Int
