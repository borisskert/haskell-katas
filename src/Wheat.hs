module Wheat where

-- https://www.codewars.com/kata/5b0d67c1cb35dfa10b0022c7/train/haskell

squaresNeeded :: Int -> Int
squaresNeeded 0 = 0
squaresNeeded n = (+ 1) . floor . logBase 2 $ fromIntegral n
