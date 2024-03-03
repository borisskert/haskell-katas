module Codewars.Kata.Hashtag where

-- https://www.codewars.com/kata/52449b062fb80683ec000024/train/haskell

import Data.Char (isAlpha, toUpper)

generateHashtag :: String -> Maybe String
generateHashtag xs
  | null text = Nothing
  | length normalized > 140 = Nothing
  | otherwise = Just . ('#' :) . concat . map capitalize . words $ normalized
  where
    normalized = map normalize xs
    text = filter isAlpha xs

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = toUpper x : xs

normalize :: Char -> Char
normalize c
  | isAlpha c = c
  | otherwise = ' '
