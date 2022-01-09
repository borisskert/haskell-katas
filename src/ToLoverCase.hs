module ToLoverCase where

-- https://www.codewars.com/kata/5713b0253b510cd97f001148/train/haskell

import Data.Char (isLetter, ord, toUpper)

toLoverCase :: String -> String
toLoverCase = map toLove

toLove :: Char -> Char
toLove c
  | isLetter c = (love !!) . (`mod` 4) . (+ (- offset)) . ord . toUpper $ c
  | otherwise = c
  where
    offset = ord 'A' :: Int
    love = "LOVE" :: String
