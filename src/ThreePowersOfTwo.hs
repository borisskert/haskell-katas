module ThreePowersOfTwo (threePowers) where

-- https://www.codewars.com/kata/6545283611df271da7f8418c/train/haskell

import Data.Bits (popCount)

threePowers :: Integer -> Bool
threePowers 0 = False
threePowers 1 = False
threePowers 2 = False
threePowers n = (<= 3) . popCount $ n
