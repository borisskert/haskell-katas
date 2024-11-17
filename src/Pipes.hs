module Pipes (pipeFix) where

-- https://www.codewars.com/kata/56b29582461215098d00000f/train/haskell

pipeFix :: [Int] -> [Int]
pipeFix numbers = [head numbers .. last numbers]
