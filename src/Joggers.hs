module Joggers where

--  https://www.codewars.com/kata/5274d9d3ebc3030802000165/train/haskell

nbrOfLaps :: Integer -> Integer -> (Integer, Integer)
nbrOfLaps bob charles = (charles `div` commonDivisor, bob `div` commonDivisor)
  where
    commonDivisor = gcd bob charles
