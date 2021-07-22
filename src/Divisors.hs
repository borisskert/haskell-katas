module Divisors where

--  https://www.codewars.com/kata/544aed4c4a30184e960010f4/train/haskell

divisors :: (Show a, Integral a) => a -> Either String [a]
divisors n
  | divisors == [] = Left (show n ++ " is prime")
  | otherwise      = Right divisors
  where
    divisorsBelow :: (Show a, Integral a) => a -> a -> [a]
    divisorsBelow 1 _ = []
    divisorsBelow divisor n
      | n `mod` divisor == 0 = divisorsBelow (divisor - 1) n ++ [divisor]
      | otherwise            = divisorsBelow (divisor - 1) n
    divisors = divisorsBelow (n `div` 2) n
