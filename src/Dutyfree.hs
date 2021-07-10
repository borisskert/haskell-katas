module Dutyfree where

--  https://www.codewars.com/kata/57e92e91b63b6cbac20001e5/train/haskell

dutyFree :: Float -> Float -> Float -> Int
dutyFree price duty costs = floor (costs / discount)
  where discount = price * duty / 100
