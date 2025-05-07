module CircleCipher (encode, decode) where

-- https://www.codewars.com/kata/634d0723075de3f97a9eb604/train/haskell

import Data.List (sortOn)

encode :: [a] -> [a]
encode xs = take size . concatMap (\(c1, c2) -> [c1, c2]) . zip xs . reverse $ xs
  where
    size = length xs

decode :: [a] -> [a]
decode xs = map snd . sortOn fst . zip indices $ xs
  where
    size = length xs
    indices = encode [0 .. size - 1]
