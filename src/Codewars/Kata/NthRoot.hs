module Codewars.Kata.NthRoot where

-- https://www.codewars.com/kata/5520714decb43308ea000083/train/haskell

root :: Double -> Double -> Double
-- https://stackoverflow.com/a/42708306/13213024
x `root` n = x ** (1 / n)
