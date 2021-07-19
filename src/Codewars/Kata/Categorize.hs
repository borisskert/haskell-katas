module Codewars.Kata.Categorize where
import Codewars.Kata.Categorize.Types

-- https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa/train/haskell

openOrSenior :: [(Int, Int)] -> [Membership]
openOrSenior = map toMembership


toMembership :: (Int, Int) -> Membership
toMembership (age, handicap)
  | age >= 55 && handicap > 7 = Senior
  | otherwise = Open
