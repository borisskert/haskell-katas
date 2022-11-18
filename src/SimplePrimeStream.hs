module SimplePrimeStream where

--  https://www.codewars.com/kata/5a908da30025e995880000e3/train/haskell

solve :: Int -> Int -> String
solve a b = take b . drop a . concatMap show $ primes

primes :: [Int]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [2, 3, 5, 7]

isPrime :: Int -> Bool
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = integerRoot 2 n :: Int

integerRoot :: Int -> Int -> Int
integerRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: Int -> Int -> (Int, Int)
    search c d'
      | c /= d' && c /= e' = search d' e'
      | otherwise = (d', e')
      where
        e' = (n1 * d' + (base `div` d' ^ n1)) `div` n
