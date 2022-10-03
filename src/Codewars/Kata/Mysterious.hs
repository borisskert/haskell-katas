module Codewars.Kata.Mysterious where

--  https://www.codewars.com/kata/55217af7ecb43366f8000f76/train/haskell

getNum :: Integer -> Integer
getNum 0 = 1
getNum 6 = 1
getNum 8 = 2
getNum 9 = 1
getNum x
  | x < 10 = 0
  | otherwise = getNum rest + getNum next
  where
    (next, rest) = x `divMod` 10
