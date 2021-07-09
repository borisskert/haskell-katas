module Codewars.Kata.Count where

-- https://www.codewars.com/kata/5513795bd3fafb56c200049e/train/haskell

countBy :: Integer -> Int -> [Integer]
countBy x n = [x, x + x .. (toInteger n) * x]
