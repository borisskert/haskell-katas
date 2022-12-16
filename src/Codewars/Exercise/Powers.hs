module Codewars.Exercise.Powers (comparePowers) where

-- https://www.codewars.com/kata/55b2549a781b5336c0000103/train/haskell

import Data.Word

type Power = (Word, Word)

comparePowers :: Power -> Power -> Ordering
comparePowers (n1, p1) (n2, p2) = compare v1 v2
  where
    v1 = toInteger n1 ^ p1 :: Integer
    v2 = toInteger n2 ^ p2 :: Integer
