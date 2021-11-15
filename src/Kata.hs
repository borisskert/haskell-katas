module Kata (celsiusToRomer) where

-- https://www.codewars.com/kata/5862eeeae20244d5eb000005/train/haskell

celsiusToRomer :: Double -> Double
celsiusToRomer = (+ 7.5) . (/ 40) . (* 21)
