module Codewars.Kata.Decibel where

--  https://www.codewars.com/kata/5612a42e746aa62de100001a/train/haskell

dBScale :: Double -> Double
dBScale i = 10 * (log10 (i / 1.0e-12))


log10 :: Double -> Double
log10 value = (log value) / (log 10)
