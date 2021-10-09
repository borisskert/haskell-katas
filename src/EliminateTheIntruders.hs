module EliminateTheIntruders (eliminateUnsetBits) where

-- https://www.codewars.com/kata/5a0d38c9697598b67a000041/train/haskell

eliminateUnsetBits :: String -> Integer
eliminateUnsetBits = (+ (-1)) . (2 ^) . toInteger . length . filter (== '1')
