module NotPrimes where

-- https://www.codewars.com/kata/5a9a70cf5084d74ff90000f7/train/haskell

notPrimes :: Int -> Int -> [Int]
notPrimes a b =
  filter (not . isPrime)
    . filter isMadeOfPrimes
    . dropWhile (< 10)
    . init
    $ [a .. b]

isMadeOfPrimes :: Int -> Bool
isMadeOfPrimes = all (`elem` "2357") . show

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
