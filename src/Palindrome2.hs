module Palindrome2 (palindrome) where

--  https://www.codewars.com/kata/58e09234ca6895c7b300008c/train/haskell

palindrome :: Int -> Int -> Maybe [Int]
palindrome num s
  | num < 0 || s < 0 = Nothing
  | otherwise = Just . take s . filter isPalindrome $ [num ..]

isPalindrome :: Int -> Bool
isPalindrome x
  | x > 9 = isPalindromic . show $ x
  | otherwise = False

isPalindromic :: (Eq a) => [a] -> Bool
isPalindromic [] = True
isPalindromic [_] = True
isPalindromic xs
  | head xs == last xs = isPalindromic . tail . init $ xs
  | otherwise = False
