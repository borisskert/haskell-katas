module Trip (zeroFuel) where

-- https://www.codewars.com/kata/5861d28f124b35723e00005e/train/haskell

zeroFuel :: Int -> Int -> Int -> Bool
zeroFuel distanceToPump mpg fuelLeft = distanceToPump `div` fuelLeft <= mpg
