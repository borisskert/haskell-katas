module NthFloydLine where

-- https://www.codewars.com/kata/5b096efeaf15bef812000010/train/haskell

nthFloyd :: Int -> Int
nthFloyd = round . sqrt . (* 2) . fromIntegral
