module SmallestCommonFactor where

-- https://www.codewars.com/kata/5933af2db328fbc731000010/train/haskell

scf :: [Int] -> Int
scf [] = 1
scf [i] = smallestPrimeFactor i
scf (x : y : xs) = scf . (: xs) . gcd x $ y

smallestPrimeFactor :: Int -> Int
smallestPrimeFactor x
  | null factors = x
  | otherwise = head factors
  where
    factors = filter (\p -> x `mod` p == 0) . takeWhile (<= x) $ primes

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) $ primes
  where
    root = integerRoot n 2 :: Int

primes :: [Int]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [2, 3, 5, 7]

integerRoot :: Int -> Int -> Int
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: Int -> Int -> (Int, Int)
    search c d
      | c /= d && c /= e = search d e
      | otherwise = (d, e)
      where
        e = (n1 * d + (base `div` d ^ n1)) `div` n
