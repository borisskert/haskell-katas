module Haskell.PrimeFactors where

-- https://www.codewars.com/kata/542f3d5fd002f86efc00081a/train/haskell

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = factor : primeFactors (n `div` factor)
  where
    factor = head . filter (`isFactorOf` n) . takeWhile (<= n) $ primes :: Integer

isFactorOf :: Integer -> Integer -> Bool
isFactorOf p n = n `mod` p == 0

isPrime :: Integer -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) $ primes
  where
    root = integerRoot n 2 :: Integer

primes :: [Integer]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [2, 3, 5, 7]

integerRoot :: Integer -> Integer -> Integer
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: Integer -> Integer -> (Integer, Integer)
    search c d
      | c /= d && c /= e = search d e
      | otherwise = (d, e)
      where
        e = (n1 * d + (base `div` d ^ n1)) `div` n
