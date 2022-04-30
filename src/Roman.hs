module Roman where

import Data.Maybe (fromJust, isJust)

-- https://www.codewars.com/kata/51b6249c4612257ac0000005/train/haskell

solution :: String -> Int
solution [] = 0
solution xs
  | isJust firstTry = fromJust firstTry + (solution . drop 2 $ xs)
  | otherwise = (fromJust . toRoman . (: []) . head $ xs) + (solution . tail $ xs)
  where
    firstTry = toRoman . take 2 $ xs :: Maybe Int

    toRoman :: String -> Maybe Int
    toRoman "IV" = Just 4
    toRoman "IX" = Just 9
    toRoman "XL" = Just 40
    toRoman "XC" = Just 90
    toRoman "CD" = Just 400
    toRoman "CM" = Just 900
    toRoman "I" = Just 1
    toRoman "V" = Just 5
    toRoman "X" = Just 10
    toRoman "L" = Just 50
    toRoman "C" = Just 100
    toRoman "D" = Just 500
    toRoman "M" = Just 1000
    toRoman _ = Nothing
