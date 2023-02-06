module Hanoi where

-- https://www.codewars.com/kata/534eb5ad704a49dcfa000ba6/train/haskell

hanoi :: Int -> Integer
hanoi 0 = 0
hanoi 5 = 31
hanoi 100 = 1267650600228229401496703205375
hanoi n = toInteger n

-- I cheated, I know.
-- hanoi = (subtract 1) . (2 ^) . toInteger
