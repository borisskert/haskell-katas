module Codewars.Kata.Compound where

-- https://www.codewars.com/kata/56044de2aa75e28875000017/train/haskell

compoundArray :: [a] -> [a] -> [a]
compoundArray xs ys
  | length xs < length ys = (++ drop (length xs) ys) . concatMap (\(x, y) -> [x, y]) . zip xs . take (length xs) $ ys
  | length xs > length ys = (++ drop (length ys) xs) . concatMap (\(x, y) -> [x, y]) . zip (take (length ys) xs) $ ys
  | otherwise = concatMap (\(x, y) -> [x, y]) . zip xs $ ys
