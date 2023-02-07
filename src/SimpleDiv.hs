{-# LANGUAGE ScopedTypeVariables #-}

module SimpleDiv where

-- https://www.codewars.com/kata/59ec2d112332430ce9000005/train/haskell

solve :: Int -> Int -> Bool
solve a = all (a `isMultipleOf`) . primeFactors

isMultipleOf :: Integral n => n -> n -> Bool
isMultipleOf x i = x `mod` i == 0

primeFactors :: Integral n => n -> [n]
primeFactors 1 = []
primeFactors n = factor : primeFactors (n `div` factor)
  where
    factor = head . filter (`isFactorOf` n) . takeWhile (<= n) $ primes

isFactorOf :: Integral n => n -> n -> Bool
isFactorOf p n = n `mod` p == 0

isPrime :: Integral n => n -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) $ primes
  where
    root = integerRoot n 2

primes :: Integral n => [n]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [2, 3, 5, 7]

integerRoot :: forall n. Integral n => n -> n -> n
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: n -> n -> (n, n)
    search c d
      | c /= d && c /= e = search d e
      | otherwise = (d, e)
      where
        e = (n1 * d + (base `div` d ^ n1)) `div` n
