{-# LANGUAGE ScopedTypeVariables #-}

module CodeWars.Sqrt where

import Prelude hiding (sqrt)

-- https://www.codewars.com/kata/52ecde1244751a799b00018a/train/haskell

sqrtInt :: (Integral n) => n -> Either (n, n) n
sqrtInt 0 = Right 0
sqrtInt n
  | root * root == n = Right root
  | otherwise = Left (root, root + 1)
  where
    root = integralRoot 2 n

integralRoot :: forall n. (Integral n) => n -> n -> n
integralRoot n base
  | d < e = d
  | otherwise = e
  where
    n1 = n - 1
    (d, e) = search 1 ((n1 + base) `div` n)

    search :: n -> n -> (n, n)
    search c d
      | c /= d && c /= e = search d e
      | otherwise = (d, e)
      where
        e = (n1 * d + (base `div` d ^ n1)) `div` n
