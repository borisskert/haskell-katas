module PriceOfMango where

--  https://www.codewars.com/kata/57a77726bb9944d000000b06/train/haskell

mango :: Int -> Int -> Int
mango quantity price = rest * price + (quantity - rest) * price * 2 `div` 3
  where
    rest = quantity `mod` 3
