module Kata (numbersWithDigitInside) where

-- https://www.codewars.com/kata/57ad85bb7cb1f3ae7c000039/train/haskell

import Data.Char (digitToInt, intToDigit)


numbersWithDigitInside :: Int -> Int -> [Int]
numbersWithDigitInside x d = toResult . map toInt . filter (\x -> d `elem` x) . map toDigits $ [1 .. x]


toResult :: [Int] -> [Int]
toResult [] = [0, 0, 0]
toResult xs = [length xs, sum xs, product xs]


toInt :: [Int] -> Int
toInt = read . map intToDigit


toDigits :: Int -> [Int]
toDigits = map digitToInt . show
