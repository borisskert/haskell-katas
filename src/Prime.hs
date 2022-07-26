module Prime where

--  https://www.codewars.com/kata/53daa9e5af55c184db00025f/train/haskell

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = not . any ((== 0) . (n `mod`)) . takeWhile (<= root) . tail $ primes
  where
    root = (floor :: Double -> Int) . sqrt . fromIntegral $ n :: Int

primes :: [Int]
primes = (initialPrimes ++) . filter isPrime $ [11, 13 ..]
  where
    initialPrimes = [1, 2, 3, 5, 7]
