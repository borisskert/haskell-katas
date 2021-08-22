module Kata where

-- https://www.codewars.com/kata/57f75cc397d62fc93d000059/train/haskell

import Data.Char (ord, digitToInt)


calc :: String -> Int
calc text = total1 - total2
  where
    values = concatMap (show . ord) $ text :: String
    total1 = sum . map digitToInt $ values :: Int
    replaceSeven = map (\x -> if x == '7' then '1' else x)
    total2 = sum . map digitToInt . replaceSeven $ values :: Int
