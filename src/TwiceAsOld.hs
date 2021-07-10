module TwiceAsOld where

-- https://www.codewars.com/kata/5b853229cfde412a470000d0/train/haskell

twice_as_old :: Int -> Int -> Int
twice_as_old fathersAge sonsAge = abs (fathersAge - (sonsAge * 2))
