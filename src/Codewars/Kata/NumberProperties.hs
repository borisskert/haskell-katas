module Codewars.Kata.NumberProperties where
import Codewars.Kata.NumberProperties.Property

-- https://www.codewars.com/kata/5507309481b8bd3b7e001638/train/haskell

numberProperty :: Integral n => n -> Property
numberProperty n = Property (isPrime n) (even n) (n `mod` 10 == 0)

isPrime :: Integral n => n -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n
  | n < 1 = False
  | even n = False
  | otherwise = not . any (\x -> n `mod` x == 0) $ [sqrtOfN, sqrtOfN - 2 .. 2]
  where
    sqrtOfN
      | even sqrtN = sqrtN - 1
      | otherwise = sqrtN
      where
        sqrtN = floor . sqrt . fromIntegral $ n
