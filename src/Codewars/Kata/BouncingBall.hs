module Codewars.Kata.BouncingBall where

-- https://www.codewars.com/kata/5544c7a5cb454edb3c000047/train/haskell

bouncingBall :: Double -> Double -> Double -> Integer
bouncingBall height bounce window
  | bounce <= 0.0 || bounce >= 1.0 = -1
  | window >= height = -1
  | window / height == bounce = 1
  | otherwise = x * 2 + 1
  where
    x = floor . logBase bounce $ (window / height)
