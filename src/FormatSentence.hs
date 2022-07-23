module FormatSentence where

--  https://www.codewars.com/kata/51689e27fe9a00b126000004/train/haskell

import Data.List (intercalate)

formatWords :: [String] -> String
formatWords xs
  | null words' = ""
  | amount == 1 = head words'
  | otherwise = (++ last words') . (++ " and ") . intercalate ", " . init $ words'
  where
    words' = filter (not . null) xs
    amount = length words'
