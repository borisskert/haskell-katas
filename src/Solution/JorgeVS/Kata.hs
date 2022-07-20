module Solution.JorgeVS.Kata where

-- https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/haskell

minimumNumber :: [Integer] -> Integer
minimumNumber xs = prime - sum'
  where
    sum' = sum xs
    prime = head . dropWhile (< sum') $ primes

primes :: [Integer]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [1, 2, 3, 5, 7]

isPrime :: Integer -> Bool
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = floor . sqrt . fromIntegral $ n :: Integer
