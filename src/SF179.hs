module SF179 where

-- https://www.codewars.com/kata/58b8db810f40ea7788000126/train/haskell

fraction :: (Int, Int) -> Int
fraction = uncurry (+) . reduce

reduce :: (Int, Int) -> (Int, Int)
reduce (numerator, denominator)
  | factor > 1 = (numerator `div` factor, denominator `div` factor)
  | otherwise = (numerator, denominator)
  where
    factor = gcd numerator denominator
