module IsFibonacci (isFibo) where

-- https://www.codewars.com/kata/56dc83840a10fee472000ca1/train/haskell

isFibo :: Int -> Int -> Int -> Bool
isFibo a b x = (== x) . head . dropWhile (< x) $ fibonacci a b

fibonacci :: Int -> Int -> [Int]
fibonacci a b = a : fibonacci b c
  where
    c = a + b
