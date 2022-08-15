module Codewars.Kata.Finance where

--  https://www.codewars.com/kata/559ce00b70041bc7b600013d/train/haskell

finance :: Integer -> Integer
finance n = (`div` 2) . product $ [n, n + 1, n + 2]
