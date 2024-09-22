module PossibilitiesOfThrowingACoinNTimes (coin) where

-- https://www.codewars.com/kata/5ad6266b673f2f067b000004/train/haskell

coin :: Int -> [String]
coin 1 = ["H", "T"]
coin n = concatMap next $ coin (n - 1)

next :: String -> [String]
next s = map (s ++) ["H", "T"]
