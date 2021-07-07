module Codewars.Kata.Sheep where

-- https://www.codewars.com/kata/54edbc7200b811e956000556/train/haskell

countSheep :: [Bool] -> Int
countSheep = length . filter (==True)
