module Codewars.Kata.Fib where

-- https://www.codewars.com/kata/5541f58a944b85ce6d00006a/train/haskell

import Data.List.Split (divvy)

productFib :: Integer -> (Integer, Integer, Bool)
productFib n
  | prod == n = (a, b, True)
  | otherwise = (a, b, False)
  where
    (a, b, prod) = head . take 1 . dropWhile (\(_, _, prod) -> prod < n) $ tupleSeq

fibSeq :: [Integer]
fibSeq = 0 : 1 : zipWith (+) fibSeq (tail fibSeq)

tupleSeq :: [(Integer, Integer, Integer)]
tupleSeq = map makeTuple . divvy 2 1 $ fibSeq

makeTuple :: [Integer] -> (Integer, Integer, Integer)
makeTuple (a : b : _) = (a, b, a * b)
