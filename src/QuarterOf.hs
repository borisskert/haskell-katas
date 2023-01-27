module QuarterOf (quarterOf) where

-- https://www.codewars.com/kata/5ce9c1000bab0b001134f5af/train/haskell

quarterOf :: Int -> Int
quarterOf month = ((month - 1) `div` 3) + 1
