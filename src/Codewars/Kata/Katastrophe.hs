module Codewars.Kata.Katastrophe where

-- https://www.codewars.com/kata/55a3cb91d1c9ecaa2900001b/train/haskell

strongEnough :: [[Int]] -> Int -> String
strongEnough earthquake age
  | test age 1000.0 = "Safe!"
  | otherwise = "Needs Reinforcement!"
  where
    shockwave = product . map sum $ earthquake :: Int

    test :: Int -> Double -> Bool
    test 0 building = building > fromIntegral shockwave
    test age building
      | building > fromIntegral shockwave = test (age - 1) (building * 0.99)
      | otherwise = False
