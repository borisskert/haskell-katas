module Tribonacci where

--  https://www.codewars.com/kata/556deca17c58da83c00002db/train/haskell

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) i = take i $ [a, b, c] ++ make [c, b, a]
  where
    make xs@(b' : a' : _) = c' : make [c', b', a']
      where
        c' = sum xs
