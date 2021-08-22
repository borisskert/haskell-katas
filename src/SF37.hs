module SF37 where

-- https://www.codewars.com/kata/58880c6e79a0a3e459000004/train/haskell

houseNumbersSum :: [Int] -> Int
houseNumbersSum = sum . takeWhile (> 0)
