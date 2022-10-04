module PrimeIndexed where

-- https://www.codewars.com/kata/59f38b033640ce9fc700015b/train/haskell

total :: [Int] -> Int
total xs = sum . map (xs !!) . takeWhile (< length xs) $ primes

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = (floor :: Double -> Int) . sqrt . fromIntegral $ n :: Int

primes :: [Int]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [2, 3, 5, 7]
