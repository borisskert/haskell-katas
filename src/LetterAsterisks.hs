module LetterAsterisks (solve) where

-- https://www.codewars.com/kata/5b358a1e228d316283001892/train/haskell

import Data.Char (toLower, isLower)
import Data.List (nub, intercalate)


solve :: String -> String
solve text = intercalate "," $ map (format . (\x -> (x, count x textToLower))) letters
  where
    textToLower = map toLower text
    letters = nub $ filter isLower textToLower


format :: (Char, Int) -> String
format (char, count) = char : ":" ++ replicate count '*'


count :: Char -> String -> Int 
count _ [] = 0
count letter text
  | letter == head text = 1 + count letter (tail text)
  | otherwise = count letter (tail text)
