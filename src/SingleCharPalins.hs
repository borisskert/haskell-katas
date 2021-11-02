module SingleCharPalins where

-- https://www.codewars.com/kata/5a66ea69e6be38219f000110/train/haskell

import Data.List.Split (divvy)

solve :: String -> Bool
solve [] = False
solve xs
  | even size = (== 1) . diff start . reverse $ end
  | odd size = (< 2) . diff start . reverse $ end
  where
    size = length xs :: Int
    half = (`div` 2) size :: Int

    start = prefix half xs :: String
    end = suffix half xs :: String

diff :: String -> String -> Int
diff [] [] = 0
diff a b
  | head a == head b = diff (tail a) (tail b)
  | otherwise = 1 + diff (tail a) (tail b)

sublist :: Int -> Int -> [a] -> [a]
sublist begin end = map snd . filter ((\x -> x >= begin && x < end) . fst) . zip [0 ..]

prefix :: Int -> [a] -> [a]
prefix = sublist 0

suffix :: Int -> [a] -> [a]
suffix count xs = sublist (length xs - count) (length xs) xs
