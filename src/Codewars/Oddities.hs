module Codewars.Oddities where

-- https://www.codewars.com/kata/51fd6bc82bc150b28e0000ce/train/haskell

noOdds :: Integral n => [n] -> [n]
noOdds = filter even
