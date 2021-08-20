module Compare where

-- https://www.codewars.com/kata/576bb3c4b1abc497ec000065/train/haskell

import Data.Char (isLetter, toUpper, ord)


compare' :: Maybe String -> Maybe String -> Bool
compare' Nothing Nothing = True
compare' (Just s1) Nothing = toCharSum s1 == 0
compare' Nothing (Just s2) = toCharSum s2 == 0
compare' (Just s1) (Just s2) = toCharSum s1 == toCharSum s2


toCharSum :: String -> Int 
toCharSum text
  | isApplicable text = sum $ map (ord . toUpper) text
  | otherwise = 0


isApplicable :: String -> Bool
isApplicable = all isLetter
