module If where

--  https://www.codewars.com/kata/54147087d5c2ebe4f1000805/train/haskell

_if :: Bool -> a -> a -> a
_if b x y
  | b == True = x
  | otherwise = y
