module Haskell.SylarDoom.SumContinuously where

-- https://www.codewars.com/kata/59b44d00bf10a439dd00006f/train/haskell

add :: [Integer] -> [Integer]
add [] = []
add xs = add (init xs) ++ [(sum . init $ xs) + last xs]
