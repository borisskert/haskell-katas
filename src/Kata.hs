module Kata (past) where

-- https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a/train/haskell

past :: Int -> Int -> Int -> Int
past hours minutes seconds = (60 * (60 * hours + minutes) + seconds) * 1000
