module NoSpace (spacey) where

-- https://www.codewars.com/kata/56576f82ab83ee8268000059/train/haskell

spacey :: [String] -> [String]
spacey = tail . scanl (++) ""

-- better solution:
-- spacey = scanl1 (++)
