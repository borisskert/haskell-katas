module NumberFactors where

-- https://www.codewars.com/kata/57a19defbb994481c40001bd/train/haskell

getFactors :: Int -> [Int]
getFactors n = filter isFactor [1 .. n]
  where
    isFactor x = n `mod` x == 0