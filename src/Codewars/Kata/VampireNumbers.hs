module Codewars.Kata.VampireNumbers where

-- https://www.codewars.com/kata/54d418bd099d650fa000032d/train/haskell

import Data.List (sort)

isVampire :: Integer -> Integer -> Bool
isVampire a b = digits == product
  where
    digits = sort $ show a ++ show b
    product = sort $ show (a * b)
