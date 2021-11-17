module IsPrime where

-- https://www.codewars.com/kata/5262119038c0985a5b00029f/train/haskell

isPrime :: Integer -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n
  | n < 0 = False
  | otherwise = all (\x -> n `mod` x /= 0) [root, (root - 1) .. 2]
  where
    root = integerSqrt n

integerSqrt :: Integer -> Integer
integerSqrt 0 = 0
integerSqrt n = search initialGuess
  where
    initialGuess = (toInteger 2 ^) . (`div` 2) . log2 $ n :: Integer

    search :: Integer -> Integer
    search root
      | isRoot root = root
      | otherwise = search ((root + n `div` root) `div` 2)
      where
        isRoot :: Integer -> Bool
        isRoot x = x * x <= n && (x + 1) * (x + 1) > n

    log2 :: Integer -> Integer
    log2 x = count x 0
      where
        count :: Integer -> Integer -> Integer
        count x size
          | x <= 0 = size
          | otherwise = count (x `div` 2) (size + 1)
