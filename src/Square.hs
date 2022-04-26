module Square where

-- https://www.codewars.com/kata/523b623152af8a30c6000027/train/haskell

square :: Integer -> Integer
square = floor . (** 2) . fromIntegral

-- use:
-- square = (^2)
