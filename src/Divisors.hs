module Divisors where

--  https://www.codewars.com/kata/542c0f198e077084c0000c2e/train/haskell

divisors :: Integral a => a -> Int
divisors 1 = 1
divisors x = (length $ divisors) + 2
  where
    divisorsBelow :: (Integral a) => a -> a -> [a]
    divisorsBelow 1 _ = []
    divisorsBelow divisor n
      | n `mod` divisor == 0 = divisorsBelow (divisor - 1) n ++ [divisor]
      | otherwise            = divisorsBelow (divisor - 1) n
    divisors = divisorsBelow (x `div` 2) x
