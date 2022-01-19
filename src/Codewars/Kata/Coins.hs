module Codewars.Kata.Coins where

-- https://www.codewars.com/kata/55d38b959f9c33f3fb00007d/train/haskell

adjust :: Int -> Int -> Int
adjust coin price = head . filter (\x -> x `mod` coin == 0) $ [price ..]
