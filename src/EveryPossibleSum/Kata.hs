module EveryPossibleSum.Kata (digits) where

-- https://www.codewars.com/kata/5b4e474305f04bea11000148/train/haskell

digits :: (Integral a, Show a, Read a) => a -> [a]
digits = map (uncurry (+)) . toPairs . toDigits
  where
    toDigits :: (Integral a, Show a, Read a) => a -> [a]
    toDigits = map (read . (:[])) . show

    toPairs :: [a] -> [(a, a)]
    toPairs [] = []
    toPairs [_] = []
    toPairs xs = collect (head xs) (tail xs) ++ toPairs (tail xs)
      where
        collect :: a -> [a] -> [(a, a)]
        collect i xs = map (\x -> (i, x)) xs
