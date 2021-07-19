module OnesAndZeroes (toNumber) where

--  https://www.codewars.com/kata/578553c3a1b8d5c40300037c/train/haskell

toNumber :: [Int] -> Int
toNumber digits = toDecimal 0 digits


toDecimal :: Int -> [Int] -> Int
toDecimal exp [digit] = digit * 2 ^ exp
toDecimal exp digits = toDecimal (exp + 1) (init digits) + (last digits) * (2 ^ exp)
