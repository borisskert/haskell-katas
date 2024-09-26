module Codewars.G964.Pureoddprime (onlyOddDigPrime) where

-- https://www.codewars.com/kata/55e0a2af50adf50699000126/train/haskell

import Data.List (genericLength)

onlyOddDigPrime :: (Integral a) => a -> [a]
onlyOddDigPrime n = [genericLength lowerSeq, last lowerSeq, head greaterSeq]
  where
    greaterSeq = dropWhile (<= n) oddDigPrimeSeq
    lowerSeq = takeWhile (<= n) oddDigPrimeSeq

oddDigPrimeSeq :: (Integral a) => [a]
oddDigPrimeSeq = filter hasOddDigits primeSeq

primeSeq :: (Integral a) => [a]
primeSeq = 2 : filter isPrime [3, 5 ..]

isPrime :: (Integral a) => a -> Bool
isPrime n
  | n <= 1 = False
  | n <= 3 = True
  | even n || n `mod` 3 == 0 = False
  | otherwise = not (any divides [5, 7 .. limit])
  where
    limit = sqrtInt n
    divides i = n `mod` i == 0 || n `mod` (i + 2) == 0

sqrtInt :: (Integral a) => a -> a
sqrtInt n = round $ sqrt . fromIntegral $ n

hasOddDigits :: (Integral a) => a -> Bool
hasOddDigits = all (odd . (`mod` 2)) . digits

digits :: (Integral a) => a -> [a]
digits 0 = []
digits n = digits (n `div` 10) ++ [n `mod` 10]
