module Codewars.Kata.Rectangle where

-- https://www.codewars.com/kata/55466989aeecab5aac00003e/train/haskell

squaresInRect :: Integer -> Integer -> Maybe [Integer]
squaresInRect lng wdth
  | lng == wdth = Nothing
  | otherwise = Just . squares lng $ wdth
  where
    squares :: Integer -> Integer -> [Integer]
    squares l w
      | w == l = [w]
      | w > l = squares w l
      | otherwise = w : squares (l - w) w
