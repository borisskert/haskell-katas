module OddNotPrime where

-- https://www.codewars.com/kata/5a9996fa8e503f2b4a002e7a/train/haskell

oddNotPrime :: Int -> Int
oddNotPrime n = length . filter (not . isPrime) . filter odd $ [1 .. n]

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
