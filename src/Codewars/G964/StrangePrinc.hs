module Codewars.G964.StrangePrinc where

-- https://www.codewars.com/kata/55fc061cc4f485a39900001f/train/haskell

numOpenLockers :: Int -> Int
numOpenLockers = floor . sqrt . fromIntegral
