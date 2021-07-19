module Codewars.Kata.Bus where

--  https://www.codewars.com/kata/5648b12ce68d9daa6b000099/train/haskell

number :: [(Int, Int)] -> Int
number = collect . foldr sumPeople (0, 0)


sumPeople :: (Int, Int) -> (Int, Int) -> (Int, Int)
sumPeople (in1, out1) (in2, out2) = (in1 + in2, out1 + out2)


collect :: (Int, Int) -> Int
collect (in', out) = in' - out
