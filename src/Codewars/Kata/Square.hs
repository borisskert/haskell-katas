module Codewars.Kata.Square where

--  https://www.codewars.com/kata/54c27a33fb7da0db0100040e/train/haskell

isSquare :: Integral n => n -> Bool
isSquare n = root * root == n
  where
    root = floor . sqrt . fromIntegral $ n
