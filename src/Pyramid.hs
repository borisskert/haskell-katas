module Pyramid where

--  https://www.codewars.com/kata/515f51d438015969f7000013/train/haskell

pyramid :: Int -> [[Int]]
pyramid n = map (`replicate` 1) [1 .. n]
