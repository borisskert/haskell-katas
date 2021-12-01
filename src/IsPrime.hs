module IsPrime where

-- https://www.codewars.com/kata/5262119038c0985a5b00029f/train/haskell

isPrime :: Integer -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n
  | n < 0 = False
  | otherwise = all (\x -> n `mod` x /= 0) [root, (root - 1) .. 2]
  where
    root = integerRoot 2 n

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
