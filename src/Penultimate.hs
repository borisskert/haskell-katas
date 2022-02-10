module Penultimate where

-- https://www.codewars.com/kata/54162d1333c02486a700011d/train/haskell

penultimate :: [a] -> a
penultimate = last . init
