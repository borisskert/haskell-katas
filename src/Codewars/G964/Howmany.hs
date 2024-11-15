module Codewars.G964.Howmany (selNumber) where

-- https://www.codewars.com/kata/55d8aa568dec9fb9e200004a/train/haskell

selNumber :: Int -> Int -> Int
selNumber n d = length $ makeNumbers n d

makeNumbers :: Int -> Int -> [Int]
makeNumbers n d = filter valid numbers
  where
    numbers
      | n < d = [n + 1 .. d]
      | otherwise = [d .. n - 1]
    valid = isValid d

isValid :: Int -> Int -> Bool
isValid d n
  | n < 10 = False
  | otherwise = isAscending d n

isAscending :: Int -> Int -> Bool
isAscending d n = all (\x -> x <= d && x > 0) . zipWith (flip (-)) digits . tail $ digits
  where
    digits = toDigits n

toDigits :: (Integral a) => a -> [a]
toDigits 0 = []
toDigits n = toDigits (n `div` 10) ++ [n `mod` 10]
