module Codewars.AlanPartridge.London where

-- https://www.codewars.com/kata/580a41b6d6df740d6100030c/train/haskell

alan :: [String] -> String
alan text
  | length containingStations == 4 = "Smell my cheese you mother!"
  | otherwise = "No, seriously, run. You will miss it."
  where
    containingStations = filter (`elem` text) $ stations :: [String]

stations = ["Rejection", "Disappointment", "Backstabbing Central", "Shattered Dreams Parkway"]
