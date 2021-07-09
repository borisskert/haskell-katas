module Survive where

-- https://www.codewars.com/kata/59ca8246d751df55cc00014c/train/haskell

hero :: Int -> Int -> Bool
hero bullets dragons = bullets `div` dragons >= 2
