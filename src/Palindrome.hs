module Palindrome (palindrome) where

--  https://www.codewars.com/kata/58df8b4d010a9456140000c7/train/haskell

palindrome :: Int -> Maybe Int
palindrome x
  | x < 0 = Nothing
  | otherwise = Just . findPalindrome $ (x, x)

findPalindrome :: (Int, Int) -> Int
findPalindrome (a, b)
  | isPalindrome a = a
  | isPalindrome b = b
  | otherwise = findPalindrome (a - 1, b + 1)

isPalindrome :: Int -> Bool
isPalindrome x
  | x < 10 = False
  | otherwise = isPalindromic . toDigits $ x

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
