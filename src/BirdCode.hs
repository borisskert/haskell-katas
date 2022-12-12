module BirdCode (birdCode) where

--  https://www.codewars.com/kata/5a580064e6be38fd34000147/train/haskell

import Data.Char (toUpper)
import Data.List.Split (splitOn)

birdCode :: [String] -> [String]
birdCode = map (map toUpper . take 4 . toCode . toWords)

toCode :: [String] -> String
toCode xs
  | length xs >= 4 = concatMap (take 1) xs
  | length xs == 3 = concat . (: [last xs]) . map head . init $ xs
  | length xs == 2 = concatMap (take 2) xs
  | otherwise = head xs

toWords :: String -> [String]
toWords = concatMap (splitOn "-") . words
