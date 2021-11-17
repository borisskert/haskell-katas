module Codewars.Kata.TenMinuteWalk where

-- https://www.codewars.com/kata/54da539698b8a2ad76000228/train/haskell

isValidWalk :: [Char] -> Bool
isValidWalk xs
  | any ((> 10) . fst) withIndices = False
  | length xs < 10 = False
  | otherwise = north == south && east == west
  where
    withIndices = zip [1 ..] xs

    north = length . filter (== 'n') $ xs
    south = length . filter (== 's') $ xs
    west = length . filter (== 'w') $ xs
    east = length . filter (== 'e') $ xs
