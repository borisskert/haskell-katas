module Hotel where

-- https://www.codewars.com/kata/5b9cf881d6b09fc9ee0002b1/train/haskell

groupSize :: Integer -> Integer -> Integer
groupSize s d = nearestSquare (2 * gauss (s - 1) + 2 * d)

nearestSquare :: Integer -> Integer
nearestSquare 0 = 0
nearestSquare n
  | abs (n - (foundRoot * foundRoot)) <= abs (n - ((foundRoot + 1) * (foundRoot + 1))) = foundRoot
  | otherwise = foundRoot + 1
  where
    initialGuess = (toInteger 2 ^) . (`div` 2) . fromInteger . log2 $ n :: Integer
    foundRoot = search initialGuess :: Integer

    search :: Integer -> Integer
    search root
      | isRoot root = root
      | otherwise = search ((root + n `div` root) `div` 2)

    isRoot :: Integer -> Bool
    isRoot x = x * x <= n && (x + 1) * (x + 1) > n

log2 :: Integer -> Integer
log2 x = count x 0
  where
    count :: Integer -> Integer -> Integer
    count x size
      | x <= 0 = size
      | otherwise = count (x `div` 2) (size + 1)

gauss n = n * (n + 1) `div` 2
