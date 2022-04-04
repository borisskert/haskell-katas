module DigitalRoot where

-- https://www.codewars.com/kata/541c8630095125aba6000c00/train/haskell

digitalRoot :: Integral a => a -> a
digitalRoot n
  | n < 10 = n
  | otherwise = digitalRoot . sum . toDigits $ n

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [remainder]
  where
    (m, remainder) = n `divMod` 10
