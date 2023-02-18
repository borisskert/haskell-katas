module Palindrome (palindrome) where

-- https://www.codewars.com/kata/58df62fe95923f7a7f0000cc/train/haskell

import Data.List.Split (divvy)

palindrome :: Integral a => a -> Maybe Int
palindrome x
  | x < 0 = Nothing
  | otherwise = Just . length . filter isPalindromic . withinDigits $ x

withinDigits :: Integral a => a -> [[a]]
withinDigits x = concatMap (\i -> divvy i 1 digits) [2 .. (length digits)]
  where
    digits = toDigits x

isPalindromic :: (Eq a) => [a] -> Bool
isPalindromic [] = True
isPalindromic [_] = True
isPalindromic (x : xs)
  | x == last xs = isPalindromic . init $ xs
  | otherwise = False

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [digit]
  where
    (m, digit) = n `divMod` 10
