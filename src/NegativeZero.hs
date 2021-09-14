module NegativeZero where

-- https://www.codewars.com/kata/5c5086287bc6600001c7589a

negativeZero :: Float -> Bool
negativeZero x = abs x == 0 && ((== '-'). head $ show x)
