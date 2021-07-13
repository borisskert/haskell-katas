module Codewars.Kata.Grade where

-- https://www.codewars.com/kata/53d16bd82578b1fb5b00128c/train/haskell

grader :: Double -> Char
grader n
  | n > 1.0 = 'F'
  | n >= 0.9 = 'A'
  | n >= 0.8 = 'B'
  | n >= 0.7 = 'C'
  | n >= 0.6 = 'D'
  | otherwise = 'F'
