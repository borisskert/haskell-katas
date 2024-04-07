module Codewars.G964.GapInPrimes (gap) where

-- https://www.codewars.com/kata/561e9c843a2ef5a40c0000a4/train/haskell

import Data.List.Split (divvy)

gap :: Integer -> Integer -> Integer -> Maybe (Integer, Integer)
gap g m n =
  safeHead
    . dropWhile (\(a, b) -> b - a /= g)
    . zipWithNeighbor
    . takeWhile (<= n)
    . dropWhile (< m)
    $ primes

-- ['a', 'b', 'c', 'd'] -> [('a', 'b'), ('b', 'c'), ('c', 'd')]
zipWithNeighbor :: [a] -> [(a, a)]
zipWithNeighbor = map (\(a : b : _) -> (a, b)) . divvy 2 1

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x : _) = Just x

primes :: [Integer]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [1, 2, 3, 5, 7]

isPrime :: Integer -> Bool
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = integerRoot 2 n :: Integer

integerRoot :: Integer -> Integer -> Integer
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: Integer -> Integer -> (Integer, Integer)
    search c d'
      | c /= d' && c /= e' = search d' e'
      | otherwise = (d', e')
      where
        e' = (n1 * d' + (base `div` d' ^ n1)) `div` n
