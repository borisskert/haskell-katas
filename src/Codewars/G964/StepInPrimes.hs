module Codewars.G964.StepInPrimes where

--  https://www.codewars.com/kata/5613d06cee1e7da6d5000055/train/haskell

step :: Integer -> Integer -> Integer -> Maybe (Integer, Integer)
step g m n
  | null myprimes = Nothing
  | otherwise = Just (myprime, myprime + g)
  where
    interval = [m .. n]
    primes' = filter isPrime interval
    myprimes = filter (\x -> x + g `elem` primes') primes'
    myprime = head myprimes

primes :: [Integer]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [1, 2, 3, 5, 7]

isPrime :: Integer -> Bool
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = floor . sqrt . fromIntegral $ n :: Integer
