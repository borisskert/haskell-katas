module Codewars.Kata.Conference where

-- https://www.codewars.com/kata/56f5594a575d7d3c0e000ea0/train/haskell

conferencePicker :: [String] -> [String] -> Maybe String
conferencePicker citiesVisited citiesOffered
  | null cities = Nothing
  | otherwise = Just . head $ cities
  where
    cities = filter (`notElem` citiesVisited) citiesOffered
