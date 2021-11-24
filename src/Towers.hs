module Towers where

-- https://www.codewars.com/kata/535bea76cdbf50281a00004c/train/haskell

towerCombination :: Integer -> Integer
towerCombination n = product [2 .. n]
