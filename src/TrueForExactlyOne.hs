module TrueForExactlyOne (one) where

-- https://www.codewars.com/kata/54599705cbae2aa60b0011a4/train/haskell

one :: [a] -> (a -> Bool) -> Bool
one xs f = (== 1) . length . filter f $ xs
