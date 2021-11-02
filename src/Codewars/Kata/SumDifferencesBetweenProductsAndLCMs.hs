module Codewars.Kata.SumDifferencesBetweenProductsAndLCMs where

-- https://www.codewars.com/kata/56e56756404bb1c950000992/train/haskell

sumDiffs :: [(Integer, Integer)] -> Integer
sumDiffs xs = sum diffs
  where
    products = map (uncurry (*)) xs :: [Integer]
    lcms = map (uncurry lcm) xs :: [Integer]
    diffs = zipWith (-) products lcms


-- interesting:
-- sumDiffs :: [(Integer, Integer)] -> Integer
-- sumDiffs = sum .  map ( (-) <$> uncurry (*) <*> uncurry lcm )
