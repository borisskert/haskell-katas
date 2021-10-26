module BalanceParentheses (fixParens) where

-- https://www.codewars.com/kata/5d8365b570a6f6001519ecc8/train/haskell

fixParens :: String -> String
fixParens xs = prefix ++ xs ++ suffix
  where
    reduced = reduceAll xs :: String

    closing = length . filter (== ')') $ reduced :: Int
    opening = length . filter (== '(') $ reduced :: Int

    prefix = replicate closing '(' :: String
    suffix = replicate opening ')' :: String

    reduceAll :: String -> String 
    reduceAll xs
      | next == xs = xs
      | otherwise = reduceAll next
      where
        next = reduce xs :: String

    reduce :: String -> String
    reduce [] = []
    reduce [x] = [x]
    reduce (x1:x2:others)
      | x1 == '(' && x2 == ')' = reduce others
      | otherwise = x1 : reduce (x2:others)
