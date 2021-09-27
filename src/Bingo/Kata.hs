module Bingo.Kata (bingo) where

-- https://www.codewars.com/kata/5a1ee4dfffe75f0fcb000145/train/haskell

import Data.List (nub)
import Data.Char (chr, ord)


bingo :: [Int] -> String
bingo x
  | containsBingo x = "WIN"
  | otherwise = "LOSE"
  where
    containsBingo :: [Int] -> Bool
    containsBingo = (== length bingo) . length . filter isOfBingo . map toLetter . nub
        where
          toLetter :: Int -> Char
          toLetter x = chr (x + offset)
            where
              offset = ord 'A' - 1 :: Int

          bingo = "BINGO" :: String

          isOfBingo :: Char -> Bool
          isOfBingo x = x `elem` bingo
