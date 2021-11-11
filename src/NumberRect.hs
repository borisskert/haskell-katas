module NumberRect where

-- https://www.codewars.com/kata/556cebcf7c58da564a000045/train/haskell

numberOfRectangles :: Int -> Int -> Int
numberOfRectangles n m = gauss n * gauss m

gauss n = n * (n + 1) `div` 2
