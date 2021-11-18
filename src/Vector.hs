module Vector (vectorLength) where

-- https://www.codewars.com/kata/554dc2b88fbafd2e95000125/train/haskell

vectorLength :: [[Double]] -> Double
vectorLength = length' . sub
  where
    sub :: [[Double]] -> [Double]
    sub [(x1 : y1 : _), (x2 : y2 : _)] = [x2 - x1, y2 - y1]

    length' :: [Double] -> Double
    length' (x : y : _) = sqrt (x ^ 2 + y ^ 2)
