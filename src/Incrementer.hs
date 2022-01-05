module Incrementer (incrementer) where

-- https://www.codewars.com/kata/590e03aef55cab099a0002e8/train/haskell

incrementer :: (Integral a) => [a] -> [a]
incrementer = zipWith (\a b -> (`mod` 10) . (+ b) $ a) [1 ..]
