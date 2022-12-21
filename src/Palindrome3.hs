module Palindrome3 where

--  https://www.codewars.com/kata/58de819eb76cf778fe00005c/train/haskell

import Data.List.Split (divvy)

palindrome :: Integer -> Maybe Bool
palindrome x
  | x < 0 = Nothing
  | otherwise = Just . any isPalindrome . concatMap (\i -> divvy i 1 digits) $ [2 .. (length digits)]
  where
    digits = toDigits x

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x : xs)
  | x == last xs = isPalindrome . init $ xs
  | otherwise = False

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [digit]
  where
    (m, digit) = n `divMod` 10
