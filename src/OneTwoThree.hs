module OneTwoThree (oneTwoThree) where

-- https://www.codewars.com/kata/5873b2010565844b9100026d/train/haskell

oneTwoThree :: Integral n => n -> [n]
oneTwoThree 0 = [0, 0]
oneTwoThree n = [divMod' 9 n, replicate' n 1]

replicate' :: (Integral n, Integral a) => n -> a -> a
replicate' 0 _ = 0
replicate' 1 x = x
replicate' n x = x + 10 * replicate' (n - 1) x

divMod' :: (Integral n) => n -> n -> n
divMod' n 0 = 0
divMod' n x
  | remainder > 0 = remainder + 10 * divMod' n (quotient * n)
  | otherwise = n + 10 * divMod' n ((quotient - 1) * n)
  where
    (quotient, remainder) = x `divMod` n
