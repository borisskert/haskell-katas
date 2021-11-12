module Ch02.Beside where

-- https://www.codewars.com/kata/5f85a89a30b05d000f5e9e64/train/haskell

import Ch02.Beside.Nat (Nat (Succ, Z))

beside :: Nat -> Nat -> Bool
beside x y = Succ x == y || Succ y == x

besideN :: Nat -> Nat -> Nat -> Bool
besideN n x y = unpack x y == n
  where
    unpack :: Nat -> Nat -> Nat
    unpack (Succ x) Z = Succ x
    unpack Z (Succ x) = Succ x
    unpack Z Z = Z
    unpack (Succ x) (Succ y) = unpack x y
