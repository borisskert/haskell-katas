module Multiples (multiples) where

--  https://www.codewars.com/kata/58ca658cc0d6401f2700045f/train/haskell

multiples :: Int -> Int -> [Int]
multiples x limit = [x, x + x .. limit]
