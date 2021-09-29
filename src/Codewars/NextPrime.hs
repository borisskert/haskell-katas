module Codewars.NextPrime where

-- https://www.codewars.com/kata/58e230e5e24dde0996000070/train/haskell

nextPrime :: Integer -> Integer
nextPrime 1 = 2
nextPrime n
  | even n = head . filter isPrime . iterate (+ 2) $ (n + 1)
  | otherwise = head . filter isPrime . iterate (+ 2) $ (n + 2)


isPrime :: Integer -> Bool
isPrime 1 = True
isPrime 2 = True
isPrime n
  | even n = False
  | otherwise = not . any (\x -> n `mod` x == 0) $ [sqrtOfN, sqrtOfN - 2 .. 2]
  where
    sqrtOfN
      | even sqrtN = sqrtN - 1
      | otherwise = sqrtN
      where
        sqrtN = floor . sqrt . fromIntegral $ n
