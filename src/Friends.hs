module Friends where

-- https://www.codewars.com/kata/5ad29cd95e8240dd85000b54/train/haskell

friends :: Int -> Int
friends 0 = 0
friends 1 = 0
friends x = log2 (x - 1) - 1

log2 :: Int -> Int
log2 x = count x 0
  where
    count :: Int -> Int -> Int
    count x size
      | x <= 0 = size
      | otherwise = count (x `div` 2) (size + 1)
