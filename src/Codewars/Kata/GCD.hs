module Codewars.Kata.GCD where
import Prelude hiding (gcd, lcm)

-- https://www.codewars.com/kata/5500d54c2ebe0a8e8a0003fd/train/haskell

--best practice:
--gcd :: Integral n => n -> n -> n
--gcd x 0 = x
--gcd x y = gcd y (x `mod` y)


gcd :: Integral n => n -> n -> n
gcd x y
  | x < y = gcd y x
  | x == y = 1
  | otherwise = euclid x y


euclid :: Integral n => n -> n -> n
euclid a 0 = a
euclid 0 b = b
euclid a b = recursively a b (a `mod` b)
  where
    recursively :: Integral n => n -> n -> n -> n
    recursively a b 0 = b
    recursively a b h = recursively b h (b `mod` h)
