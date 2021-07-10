module CheckFactor where

-- https://www.codewars.com/kata/55cbc3586671f6aa070000fb/train/haskell

checkForFactor :: Int -> Int -> Bool
checkForFactor base factor = base `mod` factor == 0
