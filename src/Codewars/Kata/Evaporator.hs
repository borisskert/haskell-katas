module Codewars.Kata.Evaporator where

--  https://www.codewars.com/kata/5506b230a11c0aeab3000c1f/train/haskell

evaporator :: Double -> Double -> Double -> Integer
evaporator content evap_per_day threshold = go content evap_per_day threshold content
  where
    go :: Double -> Double -> Double -> Double -> Integer
    go content evap_per_day threshold actual_content
      | actual_content < needed_content = 0
      | otherwise = 1 + (go content evap_per_day threshold (actual_content * (100.0 - evap_per_day) / 100.0))
      where
        needed_content = content * threshold / 100
        next_content = actual_content * (100.0 - evap_per_day) / 100.0
