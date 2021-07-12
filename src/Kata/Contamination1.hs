module Kata.Contamination1 (contamination) where

--  https://www.codewars.com/kata/596fba44963025c878000039/train/haskell

contamination :: String -> String -> String
contamination text ""   = ""
contamination text char = take (length text) (repeat (head char))
