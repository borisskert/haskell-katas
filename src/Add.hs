module Add (add) where

-- https://www.codewars.com/kata/5effa412233ac3002a9e471d/train/haskell

import Data.Char (digitToInt)


add :: Int -> Int -> Int
add a b = toInt $ addLists (toDigits a) (toDigits b)


toDigits :: Int -> [Int]
toDigits = map digitToInt . show


toInt :: [Int] -> Int
toInt = read . concat . map show


addLists :: [Int] -> [Int] -> [Int]
addLists [] [] = []
addLists [x] [] = [x]
addLists [] [x] = [x]
addLists [] x = x
addLists x [] = x
addLists [x1] [x2] = [x1 + x2]
addLists a b = addLists (init a) (init b) ++ [last a + last b]
