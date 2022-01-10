module Alternating (f) where

-- https://www.codewars.com/kata/596776fbb4f24d0d82000141/train/haskell

f :: (Eq a) => [a] -> a -> a
f xs x = (xs !!) . ((index + 1) `mod`) . length $ xs
  where
    index = fst . head . filter ((== x) . snd) $ zip [0 ..] xs :: Int
