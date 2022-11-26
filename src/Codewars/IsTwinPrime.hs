module Codewars.IsTwinPrime (isTwinPrime) where

-- https://www.codewars.com/kata/59b7ae14bf10a402d40000f3/train/haskell

isTwinPrime :: Integer -> Bool
isTwinPrime n
  | n < 3 = False
  | not . isPrime $ n = False
  | isPrime (n - 2) = True
  | otherwise = isPrime (n + 2)

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
