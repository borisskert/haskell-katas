module Codewars.Kata.Leap where

--  https://www.codewars.com/kata/526c7363236867513f0005ca/train/haskell

isLeapYear :: Int -> Bool
isLeapYear x = x `mod` 4 == 0 && not (x `mod` 100 == 0) || x `mod` 400 == 0
