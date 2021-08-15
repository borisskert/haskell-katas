module MaxSize where

--  https://www.codewars.com/kata/5a63948acadebff56f000018/train/haskell

--best practice:
--import Data.List (sortOn)
--import Data.Ord (Down(..))
--
--maxProduct :: [Integer] -> Int -> Integer
--maxProduct xs n = product $ take n $ sortOn Down xs


import Data.List (sort)

maxProduct :: [Integer] -> Int -> Integer
maxProduct xs count = product $ take count $ reverse $ sort xs
