module Codewars.Kata.Supersize where

-- https://www.codewars.com/kata/5709bdd2f088096786000008/train/haskell
-- best practise:
-- import Data.List (sort)
--
-- superSize :: Integer -> Integer
-- superSize = read . reverse . sort . show

superSize :: Integer -> Integer
superSize n = undigitize (reverse (quicksort (digitize n)))


digitize :: Integer -> [Integer]
digitize 0 = [0]
digitize number = digitizeNumber number

digitizeNumber :: Integer -> [Integer]
digitizeNumber 0 = []
digitizeNumber number = [number `mod` 10] ++ digitizeNumber (number `div` 10)


undigitize :: [Integer] -> Integer
undigitize [n] = n
undigitize numbers = 10 * undigitize (init numbers) + last numbers


-- https://stackoverflow.com/a/19083491
quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs
