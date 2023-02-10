module OptimizeThis (digitSum) where

-- https://www.codewars.com/kata/59a2af923203e8220b00008f/train/haskell

digitSum :: Integer -> Integer
digitSum = stringToSum . show

stringToSum :: Num n => String -> n
stringToSum = foldr ((+) . valueOf) 0

valueOf :: Num n => Char -> n
valueOf '0' = 0
valueOf '1' = 1
valueOf '2' = 2
valueOf '3' = 3
valueOf '4' = 4
valueOf '5' = 5
valueOf '6' = 6
valueOf '7' = 7
valueOf '8' = 8
valueOf '9' = 9
valueOf n = error ("No digit: " ++ [n])
