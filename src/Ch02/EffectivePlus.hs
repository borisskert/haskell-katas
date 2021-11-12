module Ch02.EffectivePlus where

import Ch02.Nat (Nat (Succ, Zero))

-- https://www.codewars.com/kata/5f874da45e9ce2001988c6bd/train/haskell

plusNat :: Nat -> Nat -> Nat
plusNat x Zero = x
plusNat Zero x = x
plusNat (Succ x) (Succ y) = Succ (Succ (x `plusNat` y))
