module ReverseEveryOtherWord (reverseEveryOther) where

--  https://www.codewars.com/kata/58d76854024c72c3e20000de/train/haskell

reverseEveryOther :: String -> String
reverseEveryOther = unwords . reversingOther . words

reversing :: [String] -> [String]
reversing [] = []
reversing (x : xs) = reverse x : reversingOther xs

reversingOther :: [String] -> [String]
reversingOther [] = []
reversingOther (x : xs) = x : reversing xs
