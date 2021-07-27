module Codewars.G964.Seven where

--  https://www.codewars.com/kata/55e6f5e58f7817808e00002e/train/haskell

import Data.Char (digitToInt)


seven :: Integer -> (Integer, Int)
seven m = go (m, 0)
  where
    go :: (Integer, Int) -> (Integer, Int)
    go (m, steps)
      | lengthN m <= 2 = (m, steps)
      | otherwise = go (nextN m, steps + 1)


initN :: Integer -> Integer
initN = read . init . show


lastN :: Integer -> Integer
lastN = toInteger . digitToInt . last . show


lengthN :: Integer -> Int
lengthN = length . show


nextN :: Integer -> Integer
nextN n = (initN n) - 2 * (lastN n)
