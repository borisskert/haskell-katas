module Haskell.SylarDoom.MiniBitMove where

-- https://www.codewars.com/kata/587c0138110b20624e000253/train/haskell

interpreter :: String -> String -> String
interpreter tape array = run (cycle tape) array
  where
    run _ [] = []
    run ('0' : tape) (x : array) = x : run tape array
    run ('1' : tape) ('0' : array) = run tape ('1' : array)
    run ('1' : tape) ('1' : array) = run tape ('0' : array)
