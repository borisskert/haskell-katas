module MissingNumber where

-- https://www.codewars.com/kata/57f5e7bd60d0a0cfd900032d/train/haskell

missingNo :: [Int] -> Int
missingNo xs = expectedSum - sum xs
  where
    expectedSum = sum [0 .. 100] :: Int
