module PowersOf3 (largestPower) where

-- https://www.codewars.com/kata/57be674b93687de78c0001d9/train/haskell

largestPower :: Integer -> Int
largestPower n
  | n < 2 = -1
  | otherwise = find 0 1
  where
    find :: Int -> Integer -> Int
    find i s
      | nextS >= n = i
      | otherwise = find (i + 1) nextS
      where
        nextS = s * 3 :: Integer
