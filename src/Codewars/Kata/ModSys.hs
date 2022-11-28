module Codewars.Kata.ModSys (fromNb2Str) where

-- https://www.codewars.com/kata/54db15b003e88a6a480000b9/train/haskell

import Data.List (tails)
import Text.Printf (printf)

fromNb2Str :: Integer -> [Integer] -> String
fromNb2Str n xs
  | product xs <= n = "Not applicable"
  | not (check xs) = "Not applicable"
  | otherwise = concatMap (printf "-%i-") $ convert n xs

convert :: Integer -> [Integer] -> [Integer]
convert n = map (n `mod`)

check :: [Integer] -> Bool
check = all areCoprime . init . init . tails
  where
    areCoprime :: [Integer] -> Bool
    areCoprime (x : xs) = all ((== 1) . (x `gcd`)) xs
