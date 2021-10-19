module SimpleStrDivision where

-- https://www.codewars.com/kata/5b83c1c44a6acac33400009a/train/haskell

import Data.Char (digitToInt)

solve :: String -> Int -> Int
solve xs 0 = read xs
solve xs k = findLargest (prefix count digits) (tail digits)
  where
    digits = toDigits xs :: [Int]
    count = length digits - k :: Int

    findLargest :: [Int] -> [Int] -> Int
    findLargest max xs
      | length xs == count = fromDigits nextMax
      | otherwise = findLargest nextMax (tail xs)
      where
        nextDigits = prefix count xs
        nextMax = maximum [max, nextDigits]

toDigits :: String -> [Int]
toDigits = map digitToInt

fromDigits :: [Int] -> Int
fromDigits [] = 0
fromDigits x = last x + 10 * fromDigits (init x)

sublist :: Int -> Int -> [a] -> [a]
sublist begin end = map snd . filter ((\x -> x >= begin && x < end) . fst) . zip [0..]

prefix :: Int -> [a] -> [a]
prefix = sublist 0


-- best practise:
-- import Data.List.Split (divvy)

-- solve :: String -> Int -> Int 
-- solve xs k = read $ maximum $ divvy n 1 xs
--   where n = length xs - k
