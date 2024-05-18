module Codewars.G964.Tosmallest (smallest) where

-- https://www.codewars.com/kata/573992c724fc289553000e95/train/haskell

import Data.List (minimumBy)

smallest :: Integer -> (Integer, Int, Int)
smallest n
  | n' == n = (n, 0, 0)
  | otherwise = (n', i, j)
  where
    size = length . integerToDigits $ n :: Int
    cartesian = [(i, j) | i <- [0 .. size - 1], j <- [0 .. size - 1], i /= j]
    (n', (i, j)) = minimumOn fst . map (\tuple@(i, j) -> (switchDigits i j n, tuple)) $ cartesian

integerToDigits :: Integer -> [Int]
integerToDigits n
  | n < 10 = [fromIntegral n]
  | otherwise = integerToDigits (n `div` 10) ++ [fromIntegral (n `mod` 10)]

digitsToInteger :: [Int] -> Integer
digitsToInteger = foldl (\acc x -> acc * 10 + fromIntegral x) 0

minimumOn :: (Ord b) => (a -> b) -> [a] -> a
minimumOn f = minimumBy (\a b -> compare (f a) (f b))

switchDigits :: Int -> Int -> Integer -> Integer
switchDigits i j = digitsToInteger . switch i j . integerToDigits
  where
    switch :: Int -> Int -> [a] -> [a]
    switch i j xs = insertAt j (xs !! i) . dropAt i $ xs
      where
        dropAt :: Int -> [a] -> [a]
        dropAt index xs = take index xs ++ drop (index + 1) xs

        insertAt :: Int -> a -> [a] -> [a]
        insertAt index x xs = take index xs ++ [x] ++ drop index xs
