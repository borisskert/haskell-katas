module Narcissistic where

-- https://www.codewars.com/kata/5287e858c6b5a9678200083c/train/haskell

narcissistic :: Integral n => n -> Bool
narcissistic n = (== n) . sum . map (^ x) $ digits
  where
    digits = toDigits n
    x = length digits :: Int

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [remainder]
  where
    (m, remainder) = n `divMod` 10
