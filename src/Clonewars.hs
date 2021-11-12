module Clonewars where

-- https://www.codewars.com/kata/58ddffda929dfc2cae0000a5/train/haskell

clonewars :: Integer -> (Integer,Integer)
clonewars 0 = (1, 0)
clonewars x = (clones, katas)
  where
    clones = 2 ^ (x - 1)
    katas = sum . map ((+ (-1)) . (2 ^)) $ [1..x]
