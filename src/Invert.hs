module Invert (invert) where

-- https://www.codewars.com/kata/5899dc03bc95b1bf1b0000ad/train/haskell

invert :: [Integer] -> [Integer]
invert = map negate
