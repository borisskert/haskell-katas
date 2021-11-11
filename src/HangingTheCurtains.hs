module HangingTheCurtains (numberOfHooks) where

-- https://www.codewars.com/kata/5d532b1893309000125cc43d/train/haskell

numberOfHooks :: Double -> Double -> Int
numberOfHooks length dist = (+ 1) . floor . (length /) $ fold length
  where
    fold :: Double -> Double
    fold folded
      | folded > dist = fold (folded / 2)
      | otherwise = folded
