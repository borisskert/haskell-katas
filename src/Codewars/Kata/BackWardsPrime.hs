module Codewars.Kata.BackWardsPrime (backwardsPrime) where

-- https://www.codewars.com/kata/5539fecef69c483c5a000015/train/haskell

backwardsPrime :: Integer -> Integer -> [Integer]
backwardsPrime start stop = filter isBackwardsPrime [start, (start + 1) .. stop]

isBackwardsPrime :: Integer -> Bool
isBackwardsPrime i
  | reversed == i = False
  | not . isPrime $ i = False
  | otherwise = isPrime reversed
  where
    reversed = backward i

backward :: Integer -> Integer
backward = digitsInteger . reverse . integerDigits

integerDigits :: Integer -> [Int]
integerDigits n
  | n < 10 = [fromInteger n]
  | otherwise = integerDigits n' ++ [fromInteger digit]
  where
    (n', digit) = n `divMod` 10

digitsInteger :: [Int] -> Integer
digitsInteger [] = 0
digitsInteger xs = (+ further) . toInteger . last $ xs
  where
    further = (* 10) . digitsInteger . init $ xs

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
