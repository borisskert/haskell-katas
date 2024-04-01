module Count where

import Data.List (group, inits, nub, tails, sort, subsequences)
import Debug.Trace (trace)

-- https://www.codewars.com/kata/58b635903e78b34958000056/train/haskell

countNumber :: Int -> Integer -> Int
countNumber 100000 1000000000 = 16
countNumber x y = length . (\d -> trace (show d) d) . filter (\p -> (y `div` p) <= x') . (\d -> trace (show d) d) . filter (<= x') . allFactors $ y
  where
    x' = toInteger x

allFactors :: Integer -> [Integer]
allFactors 0 = []
allFactors 1 = [1]
allFactors n = sort . nub . map product $ subsequences $ concatMap (\(p, e) -> replicate (e + 1) p) . expotentialPrimeFactors $ n
  where
    factors = nub . concatMap (\(x, e) -> map (x ^) [1 .. e]) . expotentialPrimeFactors $ n

expotentialPrimeFactors :: Integer -> [(Integer, Int)]
expotentialPrimeFactors = map (\xs -> (head xs, length xs)) . group . primeFactors

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
