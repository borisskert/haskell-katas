module FlickSwitch (flickSwitch) where

-- https://www.codewars.com/kata/64fbfe2618692c2018ebbddb/train/haskell

flickSwitch :: [String] -> [Bool]
flickSwitch = tail . scanl (\acc x -> (x /= "flick") == acc) True
