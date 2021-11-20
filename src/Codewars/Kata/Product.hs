module Codewars.Kata.Product where

-- https://www.codewars.com/kata/551204b7509063d9ba000b45/train/haskell

mainDiagonalProduct :: Num a => [[a]] -> a
mainDiagonalProduct [] = 1
mainDiagonalProduct mat = product . map (\x -> (!! x) . (!! x) $ mat) $ [0 .. maxIndex]
  where
    maxIndex = length mat - 1 :: Int
