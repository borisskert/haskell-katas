module Kata (countRedBeads) where

--  https://www.codewars.com/kata/58712dfa5c538b6fc7000569/train/haskell

countRedBeads :: Int -> Int
countRedBeads 0 = 0
countRedBeads blueBeads = (blueBeads - 1) * 2
