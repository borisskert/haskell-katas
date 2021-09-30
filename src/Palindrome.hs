module Palindrome where

-- https://www.codewars.com/kata/58ba6fece3614ba7c200017f/train/haskell

palindrome :: Integer -> Maybe Bool
palindrome x
  | x < 0 = Nothing
  | otherwise = Just . isPalindrome . show $ x
  where
    isPalindrome :: String -> Bool
    isPalindrome [] = True
    isPalindrome [_] = True
    isPalindrome xs
      | head xs == last xs = isPalindrome (tail (init xs))
      | otherwise = False
