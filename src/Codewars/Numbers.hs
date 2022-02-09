module Codewars.Numbers where

-- https://www.codewars.com/kata/56a28c30d7eb6acef700004d/train/haskell

import Data.List (group)

isPerfect :: Int -> Bool
isPerfect n
  | (/= 2) . length $ binGroups = False
  | otherwise = isPerfectPrime . length . head $ binGroups
  where
    binGroups = group . decToBin $ n

decToBin :: Int -> [Bool]
decToBin n
  | div2 > 0 = decToBin div2 ++ [rest]
  | otherwise = [rest]
  where
    div2 = n `div` 2
    rest = n `mod` 2 == 1

isPerfectPrime n = n > 1 && isPrime n

primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [1, 2, 3, 5, 7]

isPrime :: Int -> Bool
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = floor . sqrt . fromIntegral $ n :: Int
