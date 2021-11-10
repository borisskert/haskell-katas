module PlaneSeat (planeSeat) where

-- https://www.codewars.com/kata/57e8f757085f7c7d6300009a/train/haskell

import Data.Char (isLetter, isNumber)
import Data.List (intercalate)

planeSeat :: String -> String
planeSeat seat
  | null cluster || null section = "No Seat!!"
  | otherwise = intercalate "-" [section, cluster]
  where
    number = read . filter isNumber $ seat :: Int
    letter = head . filter isLetter $ seat :: Char

    section = toSection number :: String
    cluster = toCluster letter :: String

    toCluster :: Char -> String
    toCluster c
      | c `elem` "ABC" = "Left"
      | c `elem` "DEF" = "Middle"
      | c `elem` "GHK" = "Right"
      | otherwise = []

    toSection :: Int -> String
    toSection n
      | n <= 20 = "Front"
      | n <= 40 = "Middle"
      | n <= 60 = "Back"
      | otherwise = []
