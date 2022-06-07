module ChainMe (chain) where

--  https://www.codewars.com/kata/54fb853b2c8785dd5e000957/train/haskell

chain :: x -> [x -> x] -> x
chain = foldl (\x f -> f x)
