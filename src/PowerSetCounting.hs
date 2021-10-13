module PowerSetCounting where

-- https://www.codewars.com/kata/54381f0b6f032f933c000108/train/haskell

powers :: Num a => [t] -> a
powers = (2 ^) . length
