module Kata.WaveSort (waveSort) where

--  https://www.codewars.com/kata/596f28fd9be8ebe6ec0000c1/train/haskell

import Data.List (sort, transpose)
import Preloaded (isWaveSorted)

waveSort :: (Ord x) => [x] -> [x]
waveSort = toWave . sort

toWave :: (Ord x) => [x] -> [x]
toWave xs
  | isWaveSorted wave = wave
  | otherwise = concatMap reverse transposed
  where
    count = length xs
    (first, second) = splitAt (count `div` 2) xs
    transposed = transpose [first, second]
    wave = concat transposed
