module WarnSheep (warnTheSheep) where

-- https://www.codewars.com/kata/5c8bfa44b9d1192e1ebd3d15/train/haskell

import Data.List (elemIndex)


warnTheSheep :: [String] -> String
warnTheSheep sheeps
  | wolf > 1  = "Oi! Sheep number " ++ show (wolf - 1) ++ "! You are about to be eaten by a wolf!"
  | otherwise = "Pls go away and stop eating my sheep"
  where wolf = length sheeps - wolfIndex sheeps


wolfIndex :: [String] -> Int
wolfIndex sheeps = do
  case wolf of
    Just index -> index
    Nothing    -> error "No wolf found"
  where wolf = "wolf" `elemIndex` sheeps
