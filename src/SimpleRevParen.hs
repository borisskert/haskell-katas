module SimpleRevParen where

-- https://www.codewars.com/kata/5a3f2925b6cfd78fb0000040/train/haskell

import Data.Maybe (fromMaybe)

solve :: String -> Int
solve xs = fromMaybe (-1) . count . foldl find [] $ xs
  where
    find :: [Char] -> Char -> [Char]
    find [] c = [c]
    find (x : xs) c
      | c == ')' && x == '(' = xs
      | otherwise = c : x : xs

    count :: [Char] -> Maybe Int
    count [] = Just 0
    count [_] = Nothing
    count (a : b : xs)
      | a == b = fmap succ . count $ xs
      | otherwise = fmap (succ . succ) . count $ xs
