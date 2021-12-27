module PerniciousNumbers where

-- https://www.codewars.com/kata/56e195d02bb22479e50016af/train/haskell

import Data.Bits (Bits (popCount))

class PerniciousNumbers a where
  pernicious :: a -> Either String [Int]

instance PerniciousNumbers Int where
  pernicious n = intPernicious n

instance PerniciousNumbers Float where
  pernicious f = intPernicious (floor f)

intPernicious :: Int -> Either String [Int]
intPernicious n
  | n < 2 = Left "No pernicious numbers"
  | otherwise = Right pernicious
  where
    pernicious = filter isPernicious [3 .. n]

isPernicious :: Int -> Bool
isPernicious = isPrime . popCount

isPrime :: Int -> Bool
isPrime 1 = False
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
