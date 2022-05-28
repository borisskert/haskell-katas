module A9n where

--  https://www.codewars.com/kata/5375f921003bf62192000746/train/haskell

import Data.Char (isLetter)

abbreviate :: String -> String
abbreviate = abbreviate' "" ""

abbreviate' :: String -> String -> String -> String
abbreviate' abbreviated word [] = abbreviated ++ abbreviateWord word
abbreviate' abbreviated word (c:cs)
  | isLetter c = abbreviate' abbreviated (word ++ [c]) cs
  | otherwise = abbreviate' (abbreviated ++ abbreviateWord word ++ [c]) [] cs

abbreviateWord :: String -> String
abbreviateWord str
  | length str <= 3 = str
  | otherwise = head str : (show . (+ negate 2) . length $ str) ++ [last str]
