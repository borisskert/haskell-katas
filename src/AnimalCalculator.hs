module AnimalCalculator (solution) where

-- https://www.codewars.com/kata/5a6663e9fd56cb5ab800008b/train/haskell

solution :: Int -> [Int]
solution 1 = [1, 15, 15]
solution 2 = [2, 15 + 9, 15 + 9]
solution n = [n, 15 + 9 + (n - 2) * 4, 15 + 9 + (n - 2) * 5]
