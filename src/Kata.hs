module Kata (x) where

--  https://www.codewars.com/kata/5906436806d25f846400009b/train/haskell

x :: Int -> String
x n = init . unlines . map (toLine . (\i -> (i, n - i - 1))) $ numbers
  where
    half = n `div` 2

    indices = [0 .. half]
    numbers = indices ++ (reverse . init $ indices)

    toLine :: (Int, Int) -> String
    toLine (first, second)
      | first == second = edge ++ "■" ++ edge
      | otherwise = edge ++ "■" ++ mid ++ "■" ++ edge
      where
        edge = replicate first '□'
        mid = replicate (n - first * 2 - 2) '□'
